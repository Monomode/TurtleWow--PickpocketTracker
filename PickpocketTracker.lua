local f = CreateFrame("Frame")

-- track before/after coin to detect how much was stolen
local lastMoney = GetMoney()
local sessionMoney = 0
local sessionItems = {}
local sessionStart = time()

f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_MONEY")
f:RegisterEvent("LOOT_OPENED")

local function formatMoney(copper)
    local g = floor(copper / (100 * 100))
    local s = floor((copper - g*100*100) / 100)
    local c = copper % 100
    local str = ""
    if g > 0 then str = str .. g .. "g " end
    if s > 0 then str = str .. s .. "s " end
    if c > 0 or str == "" then str = str .. c .. "c" end
    return str
end

local function formatTime(seconds)
    local h = floor(seconds / 3600)
    local m = floor((seconds % 3600) / 60)
    local s = seconds % 60
    if h > 0 then
        return string.format("%dh %dm %ds", h, m, s)
    elseif m > 0 then
        return string.format("%dm %ds", m, s)
    else
        return string.format("%ds", s)
    end
end

local function Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99[Pickpocket]|r " .. msg)
end

-- Slash command: /pp
SLASH_PICKPOCKET1 = "/pp"
SlashCmdList["PICKPOCKET"] = function(msg)
    msg = string.lower(msg or "")

    if msg == "reset" then
        sessionMoney = 0
        sessionItems = {}
        sessionStart = time()
        Print("Session has been reset.")
        return
    end

    -- Default: show summary
    local elapsed = time() - sessionStart
    Print("Session summary:")
    Print("  Time: " .. formatTime(elapsed))
    Print("  Gold stolen: " .. formatMoney(sessionMoney))
    Print("  Items looted: " .. #sessionItems)
    for _, item in ipairs(sessionItems) do
        Print("   - " .. item)
    end
end

f:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        lastMoney = GetMoney()
        sessionStart = time()

    elseif event == "PLAYER_MONEY" then
        local currentMoney = GetMoney()
        local diff = currentMoney - lastMoney
        if diff > 0 then
            if LootFrame:IsShown() and IsStealthed() then
                sessionMoney = sessionMoney + diff
                Print("Stole " .. formatMoney(diff))
            end
        end
        lastMoney = currentMoney

    elseif event == "LOOT_OPENED" then
        if IsStealthed() then
            for i=1, GetNumLootItems() do
                local itemLink = GetLootSlotLink(i)
                local _, _, _, _, locked = GetLootSlotInfo(i)
                if itemLink and not locked then
                    table.insert(sessionItems, itemLink)
                    Print("Looted " .. itemLink)
                end
            end
        end
    end
end)
