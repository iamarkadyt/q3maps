<img src="https://github.com/arkadyt/q3maps/blob/master/q3strong2018/media/Screenshot_20181110_190222.png" width="400" /> <img src="https://github.com/arkadyt/q3maps/blob/master/q3strong2018/media/Screenshot_20181110_190449.png" width="397" />
<img src="https://github.com/arkadyt/q3maps/blob/master/rd3ctfq3/media/RD3CTFQ3_11.jpg" width="264" /> <img src="https://github.com/arkadyt/q3maps/blob/master/rd3ctfq3/media/RD3CTFQ3_07.jpg" width="264" /> <img src="https://github.com/arkadyt/q3maps/blob/master/rd3ctfq3/media/RD3CTFQ3_02.jpg" width="264" />

# Table of contents
* [Contributing](#contributing)
* [Development tips](#development-tips)
* [Useful Shortcuts](#useful-shortcuts)

# Contributing

To contribute, [download and install GtkRadiant](https://icculus.org/gtkradiant/downloads.html). 

Configure your editor to point to the game folder (dir that contains baseq3 directory), then in the editor on the menu bar tick **Textures > shaderlist.txt only** and open **Textures > base > ..anything..** to generate shaderlist.txt file and copy other files important for map compilation process.

Next clone this repo and synchronize contents of the map of your choice into the `baseq3` folder by running `sync-baseq3` script:
```
# clone:
cd ~/Games/Q3/baseq3/
git clone https://github.com/arkadyt/q3maps

# sync:
./tools/linux/scripts/sync-baseq3 [gameDir] [mapDir]

# (you can also edit sync-baseq3 to configure it directly)
```
Now update `baseq3/scripts/shaderlist.txt` with names of new shaders copied to `baseq3/scripts` folder.

You should edit map content directly in the cloned repository then use `build` script to:

* compile the map
* build a .pk3 file
* place it into the baseq3 directory
* and synchronize map content with the baseq3 folder

`build` script will do it all for you except for keeping your `shaderlist.txt` file up to date. You will have to do that yourself! Yay fun!

# Development tips

### When reverse engineering pk3 files:

* Unpack textures and scripts folders directly into the baseq3 folder (use sync-baseq3 script).
* Then add names of unpacked shaders to the baseq3/scripts/shaderlist.txt file.
* Finally, in the radiant, set the game folder to the directory containing the abovementioned baseq3 and the game binary.

All the best!

### Some other tips

* `Commit` frequently. You never know when Radiant will crash next.
* `Describe changes` precisely. It's hard to know what changes have been done, but really important to when trying to understang what broke the (say) `bspc` build.
* `No Compilation Errors`, never. With every commit make sure that you can fully build your map, including BSPs and AAS files. This will come vital when something will break later on and you'll find yourself `git bisecting` through history and building from sources.
* To `quickly adjust textures around some brush face` without manually tweaking values in the Texture Inspector (S) use following routine: 
  - copy texture from that face onto surrounding faces; this will copy xy scales, xy shift and rotation.
  - then apply a new texture through selecting it in the texture inspector and clicking `Shift MMBC` on those surrounding faces; using that key combo will keep their texture scales and shifts intact.
* `T Junction Issues` Fighting stitching issues often includes caulking invisible faces and ensuring that visible faces are perfectly aligned to each other. If none of that helps, rebuilding problematic geometry chunk or slightly tweaking brush sizes in that area usually resolves the problem.
* `Radiant` Radiant (as of Gtk v1.6.4) needs to be restarted every so often, when working long hours, to avoid sudden crashes and following brush mutation.
* `bspc 2.1h` is problematic. Windows version of bspc 2.1i works much better.
* `target_speaker` sound blocking depends on the `vis` data!
* `Cluster Portals` have to be around 16 units thick; otherwise bots start getting stuck.
* `ERROR: Tried parent` appears when some geometry on the map seems to be very complex for bspc. Binary search the map with huge botclip/playerclip brush (covering the entire map) for problematic areas.

# Useful Shortcuts

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
