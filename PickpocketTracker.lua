
local f = CreateFrame("Frame")

-- track before/after coin to detect how much was stolen
local lastMoney = GetMoney()

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

f:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        lastMoney = GetMoney()

    elseif event == "PLAYER_MONEY" then
        local currentMoney = GetMoney()
        local diff = currentMoney - lastMoney
        if diff > 0 then
            -- Only show if this gain came from pickpocket loot window
            if LootFrame:IsShown() and IsStealthed() then
                DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99[Pickpocket]|r Stole " .. formatMoney(diff))
            end
        end
        lastMoney = currentMoney

    elseif event == "LOOT_OPENED" then
        if IsStealthed() then
            for i=1, GetNumLootItems() do
                local itemLink = GetLootSlotLink(i)
                local _, _, _, _, locked = GetLootSlotInfo(i)
                if itemLink and not locked then
                    DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99[Pickpocket]|r Looted " .. itemLink)
                end
            end
        end
    end
end)
