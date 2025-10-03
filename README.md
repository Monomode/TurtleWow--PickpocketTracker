Pickpocket Tracker - Turtle WoW Addon
-------------------------------------

Author: Monomoy
Version: 1.3
Interface: 11200

Description:
------------
This addon displays how much gold and which items you steal when using the
Pick Pocket ability. By default in WoW 1.12 / Turtle WoW, stolen coins do not
show in chat. This addon restores that feedback, tracks totals, and adds a
session timer.

Features:
---------
- Prints a chat message whenever you pickpocket coins (e.g., "Stole 12s 50c").
- Prints a chat message for each stolen item (e.g., "Looted Flash Powder").
- Tracks total gold and items stolen per session.
- Tracks elapsed session time.
- Slash command **/pp** shows a session summary.
- Slash command **/pp reset** clears your session totals and timer.

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
- Type **/pp** to see a session summary (time, gold, items).
- Type **/pp reset** to clear your session and start fresh.

Example Output:
---------------
[Pickpocket] Stole 1s 74c
[Pickpocket] Looted Flash Powder
[Pickpocket] Looted Heavy Junkbox

/pp command output:
[Pickpocket] Session summary:
[Pickpocket]   Time: 32m 15s
[Pickpocket]   Gold stolen: 5g 34s 10c
[Pickpocket]   Items looted: 3
[Pickpocket]    - Flash Powder
[Pickpocket]    - Heavy Junkbox
[Pickpocket]    - Lockpick

/pp reset command:
[Pickpocket] Session has been reset.

Notes:
------
- This addon does not change gameplay; it only reports what you receive.
- Works on Turtle WoW (1.12 client).
- No configuration is needed.
