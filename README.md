Pickpocket Tracker - Turtle WoW Addon
-------------------------------------

Author: ChatGPT  
Version: 1.0  
Interface: 11200  

Description:
------------
This addon displays how much gold and which items you steal when using the
Pick Pocket ability. By default in WoW 1.12 / Turtle WoW, stolen coins do not
show in chat. This addon restores that feedback.

Features:
---------
- Prints a chat message whenever you pickpocket coins (e.g., "Stole 12s 50c").
- Prints a chat message for each stolen item (e.g., "Looted Flash Powder").
- Only activates when you are in Stealth and looting via Pick Pocket.

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
- When the loot window appears and you steal coins/items, the addon will
  print messages in your chat window.

Example Output:
---------------
[Pickpocket] Stole 1s 74c  
[Pickpocket] Looted Flash Powder  
[Pickpocket] Looted Heavy Junkbox  

Notes:
------
- This addon does not change gameplay; it only reports what you receive.
- Works on Turtle WoW (1.12 client).
- No configuration is needed.

Enjoy and happy stealing!
