Pickpocket Tracker - Turtle WoW Addon
-------------------------------------

Author: Monomoy
Version: 1.1
Interface: 11200

Description:
------------
This addon displays how much gold and which items you steal when using the
Pick Pocket ability. By default in WoW 1.12 / Turtle WoW, stolen coins do not
show in chat. This addon restores that feedback and now tracks totals per
session.

Features:
---------
- Prints a chat message whenever you pickpocket coins (e.g., "Stole 12s 50c").
- Prints a chat message for each stolen item (e.g., "Looted Flash Powder").
- Tracks total gold and items stolen per session.
- Slash command **/pp** to show a session summary.

Installation:
-------------
1. Navigate to your WoW installation folder:
   _classic_/Interface/AddOns/

2. Create a new folder called: PickpocketTracker

3. Place the following files inside the folder:
   - PickpocketTracker.toc
   - PickpocketTracker.lua
   - README.txt (this file)

4. Restart Turtle WoW or reload your UI with /reload.

Usage:
------
- Enter Stealth and use Pick Pocket on humanoid mobs.
- When you loot coins/items, the addon will print messages in chat.
- Type **/pp** to see a session summary:
    * Total gold stolen
    * Total items looted
    * List of all items looted this session

Example Output:
---------------
[Pickpocket] Stole 1s 74c
[Pickpocket] Looted Flash Powder
[Pickpocket] Looted Heavy Junkbox

/pp command output:
[Pickpocket] Session summary:
[Pickpocket]   Gold stolen: 5g 34s 10c
[Pickpocket]   Items looted: 3
[Pickpocket]    - Flash Powder
[Pickpocket]    - Heavy Junkbox
[Pickpocket]    - Lockpick

Notes:
------
- This addon does not change gameplay; it only reports what you receive.
- Works on Turtle WoW (1.12 client).
- No configuration is needed.
