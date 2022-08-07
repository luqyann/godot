// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.GradientTexture2D.RepeatEnum")
@:csNative
extern enum GradientTexture2D_RepeatEnum {
	/**		
		The gradient fill is restricted to the range defined by `godot.GradientTexture2D.fillFrom` to `godot.GradientTexture2D.fillTo` offsets.
	**/
	None;

	/**		
		The texture is filled starting from `godot.GradientTexture2D.fillFrom` to `godot.GradientTexture2D.fillTo` offsets, repeating the same pattern in both directions.
	**/
	Repeat;

	/**		
		The texture is filled starting from `godot.GradientTexture2D.fillFrom` to `godot.GradientTexture2D.fillTo` offsets, mirroring the pattern in both directions.
	**/
	Mirror;
}
