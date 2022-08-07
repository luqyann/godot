// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpriteBase3D.DrawFlags")
@:csNative
extern enum SpriteBase3D_DrawFlags {
	/**		
		If set, the texture's transparency and the opacity are used to make those parts of the sprite invisible.
	**/
	Transparent;

	/**		
		If set, lights in the environment affect the sprite.
	**/
	Shaded;

	/**		
		If set, texture can be seen from the back as well, if not, it is invisible when looking at it from behind.
	**/
	DoubleSided;

	/**		
		Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.
	**/
	DisableDepthTest;

	/**		
		Sprite is scaled by depth so that it always appears the same size on screen.
	**/
	FixedSize;

	/**		
		Represents the size of the `godot.SpriteBase3D_DrawFlags` enum.
	**/
	Max;
}
