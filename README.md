# Read this!

When reverse engineering pk3 files:

* Unpack textures and scripts folders directly into the baseq3 folder.
* Then add unpacked shaders names to the baseq3/scripts/shaderlist.txt file.
* Finally, in the radiant, set the game folder to the directory containing the abovementioned baseq3 and the game binary.

Good luck!

# Useful Shortcuts

Following are some of the useful GTKRadiant shortcuts:

`Ctrl + Alt + Shift + LMBC` Select individual faces for texture assigment.<br>
`Ctrl + LMB Drag` Select & drag a face.<br>
`Shift + LMBC` Select an item (brush, entity, anything).<br>
`Shift + LMB Drag` Select items in a brush mode.<br>
`Shift + Ctrl + LMB Drag` Select individual faces in a brush mode.<br>
`Middle MB Click` Pick a texture.<br>
`Shift MMBC` Assign a current texture to a brush.<br>

### KDE Specific Shortcuts

`Alt + RMB Drag` Easily resize KDE windows with 1px border.

# Some tips

* `T Junction Issues` Fighting stitching issues often includes caulking invisible faces and ensuring that visible faces are perfectly aligned to each other. If none of that helps, tweaking the geometry would resolve the problem.
* `Radiant` Radiant (as of Gtk v1.6.4) needs to be restarted at least every 6 hours of continuous work to avoid possible issues of brush mutation.
