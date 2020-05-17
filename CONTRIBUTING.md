## Table of contents

* [Setting up local environment](#setting-up-local-environment)
* [Development tips](#development-tips)
* [Useful Shortcuts](#useful-shortcuts)

## Setting up local environment

Following instructions assume that you are doing a clean installation. If you aren't, I recommend to create a subdirectory somewhere on your machine to keep it isolated, as the development flow is quite specific / unusual.

* [Download and install GtkRadiant](https://icculus.org/gtkradiant/downloads.html). 
* Configure your editor to point to the game folder (directory that contains baseq3 folder).
* Then go to `Editor / Textures` and enable `shaderlist.txt only`.
* Click on `Textures / base / ..anything..` to generate the default shaderlist.txt file (important!).

Next clone this repository and choose a map you would like to edit. After that run the `build` script to compile and install the map into the `baseq3`. This will allow you to test your maps as you develop them. Your flow would look like following:
* Make edits in GtkRadiant (you edit files in this repository)
* Once finished close editor and run `build` script (to replicate your edits over to game directory)
* Load up the game, open the console and execute `/devmap map_i_am_working_on`
* Test and inspect the map

Sync script usage:
```
./tools/build [gameFolder] [repoMapFolder]
```

Also remember to update `baseq3/scripts/shaderlist.txt` with the names of the new shader files that were copied to `baseq3/scripts` folder by sync script. I haven't implemented an auto update yet, so it has to be done manually. This step allows the GtkRadiant to properly display shaders in the Texture View panel.

## Tips

### Reverse engineering pk3 files

* Unpack textures and scripts folders directly into the baseq3 folder (can use `sync-baseq3` script).
* Then add names of unpacked shaders to the baseq3/scripts/shaderlist.txt file.
* Finally, in the radiant, set the game folder to the directory containing the abovementioned baseq3 and the game binary.

### Working with GtkRadiant

* Commit your changes with Git frequently. You'll never know when Radiant decides to crash next.
* Describe your changes verbosely. This comes handy during debugging sessions when you're trying to understand what broke the build.
* Never commit the map version if it doesn't compile. With every commit make sure that you can fully build your map, including BSPs and AAS files. It's impossible to run a binary search through history with `git bisect` to find what broke the map if you can't compile every single one of your commits.
* To quickly adjust textures around a brush face without manually tweaking values in the Texture Inspector (S) do: 
  - Copy texture from that face onto surrounding faces; this will copy xy scales, xy shift and rotation.
  - Then apply a new texture through selecting it in the texture inspector and clicking `Shift MMBC` on those surrounding faces; using that key combo will keep their texture scales and shifts intact.
* T-Junction issues can be resolved by caulking invisible faces and ensuring that visible faces are perfectly aligned to each other. If none of that helps, rebuilding problematic geometry chunk or slightly tweaking brush sizes in that area usually resolves the problem. You can also try to copy brushes over to a different (new) map file with a different version of GtkRadiant.
* GtkRadiant (at least as of Gtk v1.6.4) needs to be restarted periodically, when working long hours, to avoid sudden crashes and brushgeometry mutation.
* Version 2.1h of bspc sometimes doesn't compile even with perfectly fine geometry. Use 2.1i (included in `/vendor`).
* Sound blocking for `target_speaker` entities depends on the `vis` data you calculate during compilation.
* Cluster portals have to be around 16 units thick, otherwise bots get stuck.
* `ERROR: Tried parent` occurs during compilation when bspc can't handle the map geomentry for some reason. It might be simply too complex. To find out which geometry that is do a binary search on the map with a huge playerclip brush until you narrow down the area enough to identify what caused the problem. Remove the geometry or cover it in player or bot clips.
* If you have renamed the game directory and GtkRadiant won't launch, go to GtkRadiant directory, then `/games` and delete `q3.game` file.

### Editor shortcuts

Following are some useful GTKRadiant shortcuts:

`Ctrl + Alt + Shift + LMBC` Select individual faces for texture assigment.<br>
`Ctrl + LMBD` Select & drag a face.<br>
`Shift + LMBC` Select an item (brush, entity, anything).<br>
`Shift + LMBD` Select items in a brush mode.<br>
`Shift + Ctrl + LMBD` Select individual faces in a brush mode.<br>
`MMBC` Pick a texture.<br>
`Shift + MMBC` Assign current texture to a brush face.<br>
`Shift + A` When some face is selected: selects all brushes that have the same texture.<br>

### KDE Specific Shortcuts

`Alt + RMB Drag` Easily resize annoying Gtk windows with microscopic 1px border.
