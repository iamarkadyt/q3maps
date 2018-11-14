# Description

In this repository you will find some of my mapmaking works for the Quake III Arena game.

If you want to checkout the maps in the editor, clone the repository and copy-merge the contents of the directory of the desired map into the `baseq3` folder:
```
# clone:
cd ~/Games/Q3/baseq3/
git clone https://github.com/arkadyt/q3maps

# cd into the repo directory, choose a map 
# and copy-merge its content into the baseq3 folder:
./tools/scripts/sync-baseq3 [gameDir] [mapDir]

# (you can also configure the variables in the 
# sync-baseq3 directly instead of passing args)
```
Then ensure the location of the game directory is set in the Radiant and the shaderlist.txt is (always!) updated with the names of the new (copy-merged) shaders.

To contribute, edit the map content directly in the cloned repository and then use `build` script to compile the map, build a .pk3 file, place it into the baseq3 directory and copy-merge the map content out into the baseq3 folder.<br>
WARNING: `build` script does not update the shaderlist.txt, you will have to do that manually.

# Development tips

### When reverse engineering pk3 files:

* Unpack textures and scripts folders directly into the baseq3 folder (that's what we do above with rsync).
* Then add the names of the unpacked shaders to the baseq3/scripts/shaderlist.txt file.
* Finally, in the radiant, set the game folder to the directory containing the abovementioned baseq3 and the game binary.

Good luck!

### Some other tips

* `Commit` frequently. You never know when Radiant will crash next.
* `Describe changes` precisely. You can't walk through commits with `git bisect` and checkout the sources. It's hard to know what changes have been done, but really important to, when trying to understang what broke the (say) `bspc` build.
* `Leave No Leaks` With every commit make sure that your map has no leaks. When checking out older commits later and building .aas files off of them, to understand what change was breaking, you have to have no leaks on the map. Otherwise bspc will return error. Same concept applies to catching vis and light stage errors like `MAX_TW_VERTS exceeded` and `MAX_MAP_VISIBILITY exceeded`. 
* To `quickly adjust the textures around some face` without manually tweaking values in the Texture Inspector (S) use the following routine: copy the texture from that face onto the surrounding textures (this will copy xy scale and shift and rotation) then apply a new texture through selecting it in the texture inspector and clicking `Shift MMBC` on the surrounding faces (this will keep the texture scales and shifts intact).
* `T Junction Issues` Fighting stitching issues often includes caulking invisible faces and ensuring that visible faces are perfectly aligned to each other. If none of that helps, tweaking the geometry slightly usually resolves the problem.
* `Radiant` Radiant (as of Gtk v1.6.4) needs to be restarted every so often when working long hours to avoid sudden crashes and the following brush mutation.
* `bspc 2.1h` is problematic. Windows version of bspc 2.1i works much better.
* `target_speaker` entities depend on the `vis`!
* `Cluster Portals` have to be thick because otherwise bots get stuck in them for a few moments.
* `ERROR: Tried parent` appears when some geometry on the map seems to be very complex for bspc. Binary search the map with the huge botclip brush (covering the entire map) for the problematic areas.

# Useful Shortcuts

Following are some of the useful GTKRadiant shortcuts:

`Ctrl + Alt + Shift + LMBC` Select individual faces for texture assigment.<br>
`Ctrl + LMBD` Select & drag a face.<br>
`Shift + LMBC` Select an item (brush, entity, anything).<br>
`Shift + LMBD` Select items in a brush mode.<br>
`Shift + Ctrl + LMBD` Select individual faces in a brush mode.<br>
`MMBC` Pick a texture.<br>
`Shift + MMBC` Assign a current texture to a brush face.<br>
`Shift + A` When some face is selected: selects all brushes that have the texture.<br>


### KDE Specific Shortcuts

`Alt + RMB Drag` Easily resize Gtk windows with 1px border.
