Stronghold Opposition 2018 for Q3A by Arkady 'arcan770077f' Titenko.
To my dad, Sergey 'alarixx' Titenko! :)

====================================================================================
Title                   : Stronghold Opposition 2018
Date                    : Nov 10th 2018
Version                 : 1.0.1
Source .map file        : https://github.com/arkadyt/q3maps/
Filename                : q3strong2018.bsp
Author                  : Arkady 'arcan770077f' Titenko (aka arkadyt)
Email Address           : To contact me open an issue here https://github.com/arkadyt/q3maps/
Description             : CTF map based on Quake 3 CTF's Stronghold Opposition by Remco 'SithLord' Mooijweer (yr. 2000).
Additional Credits to   : - id software for Quake III Arena & Quake III Team Arena.
                          - Guys over at the github.com/ioquake for continuing the development of this great game.
                          - Tig and Mand0g for keeping the lvlworld.com live for free, for us all, for so many years.
                          - Kiltron for his texturepacks (www.planetquake.com/meanarena).
                          - Evil Lair for the cratetextures (http://www.planetquake.com/hfx).
                          - Remco Mooijweer for his original map remake for Q3.
                          - Dave 'Zoid' Kirsch for the original Q2 mapdesign.
                          
====================================================================================

* Changelog *
Following changes rebalance the map by introducing new gameplay flows that make it more interesting to play and bring previously dead (unused) areas of the map to life.

- Raised ceiling in the flagrooms.
- Relit scene with modified sun shaders for more realistic look. Added soft global illumination. 
- Added a passage from the Ramp Room to the Main Room (former 'Lift Room').
- Ditched waterpipes, bots cannot navigate them properly.
- Ditched elevators, same reason. Instead have added two teleporter rooms.
- Added a passage from the Main Room to the Right Hall.
- Added two passages from the Railgun Room to the Right and Left Halls (holes in the floor!).

Improved overall items layout and:
- BFG now spawns sometimes instead of Quad.
- Have put Regens on top of the crate stacks in the Ramp Rooms.
- Added holdable teleporter (where?).
- Added more rocketlaunchers (yay!) and grenade launchers.
- Some other neat changes. GO CHECK IT OUT!

- Botclipped scene properly to prevent bots from constantly falling into the pool in the center. They still can jump down when they need though!
- Used newer tools (bspc 2.1i) to compile .aas files. Bots have to be acting slightly more clever now.
- Added support for deathmatch, tourney and team deathmatch.

====================================================================================

- Play Information -

Gametype(s)             : CTF (+ FFA & TEAM)
Players                 : 6 - 10 (3 vs 3, 4 vs 4, 5 vs 5)
Bots                    : Hell Yeah!
Weapons                 : All except Lightning Gun
Powerups                : Quaddamage, Regen(2), Medkit(2), Teleporter(2)

====================================================================================

- Construction -

Base                    : based on q3strongholdv2.bsp, work of Remco 'SithLord' Mooijweer.
Editor(s) used          : GTKRadiant 1.6.4 (I hate it. It crashes all the time! Always make frequent (git) commits!)
Additional Tools        : GIMP, Photopea (online photoshop).
Known Bugs              : Fans are visible through sky outside (still), if you know how to fix this contact me please.
Build Time              : 10 days.
Textures used           : Base Texture set, Crate textures from Evil's TexturePack II and Kiltron's Texture Pack II.
Compile machine         : Intel I5-3330 3.0Ghz with 8GB RAM, running Kubuntu 18.10.
