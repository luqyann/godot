// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Label3D.DrawFlags")
@:csNative
extern enum Label3D_DrawFlags {
	/**		
		If set, lights in the environment affect the label.
	**/
	Shaded;

	/**		
		If set, text can be seen from the back as well. If not, the text is invisible when looking at it from behind.
	**/
	DoubleSided;

	/**		
		Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.
	**/
	DisableDepthTest;

	/**		
		Label is scaled by depth so that it always appears the same size on screen.
	**/
	FixedSize;

	/**		
		Represents the size of the `godot.Label3D_DrawFlags` enum.
	**/
	Max;
}
