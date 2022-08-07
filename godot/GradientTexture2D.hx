// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The texture uses a `godot.Gradient` to fill the texture data in 2D space. The gradient is filled according to the specified `godot.GradientTexture2D.fill` and `godot.GradientTexture2D.repeat` types using colors obtained from the gradient. The texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see `godot.GradientTexture2D.width` and `godot.GradientTexture2D.height`). See also `godot.GradientTexture` and `godot.CurveTexture`.
**/
@:libType
@:csNative
@:native("Godot.GradientTexture2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class GradientTexture2D extends godot.Texture {
	/**		
		The gradient repeat type, one of the `godot.GradientTexture2D_RepeatEnum` values. The texture is filled starting from `godot.GradientTexture2D.fillFrom` to `godot.GradientTexture2D.fillTo` offsets by default, but the gradient fill can be repeated to cover the entire texture.
	**/
	@:native("Repeat")
	public var repeat:godot.GradientTexture2D_RepeatEnum;

	/**		
		The final offset used to fill the texture specified in UV coordinates.
	**/
	@:native("FillTo")
	public var fillTo:godot.Vector2;

	/**		
		The initial offset used to fill the texture specified in UV coordinates.
	**/
	@:native("FillFrom")
	public var fillFrom:godot.Vector2;

	/**		
		The gradient fill type, one of the `godot.GradientTexture2D_FillEnum` values. The texture is filled by interpolating colors starting from `godot.GradientTexture2D.fillFrom` to `godot.GradientTexture2D.fillTo` offsets.
	**/
	@:native("Fill")
	public var fill:godot.GradientTexture2D_FillEnum;

	/**		
		If `true`, the generated texture will support high dynamic range (`godot.Image_Format.rgbaf` format). This allows for glow effects to work if `godot.Environment.glowEnabled` is `true`. If `false`, the generated texture will use low dynamic range; overbright colors will be clamped (`godot.Image_Format.rgba8` format).
	**/
	@:native("UseHdr")
	public var useHdr:Bool;

	/**		
		The number of vertical color samples that will be obtained from the `godot.Gradient`, which also represents the texture's height.
	**/
	@:native("Height")
	public var height:Int;

	/**		
		The number of horizontal color samples that will be obtained from the `godot.Gradient`, which also represents the texture's width.
	**/
	@:native("Width")
	public var width:Int;

	/**		
		The `godot.Gradient` used to fill the texture.
	**/
	@:native("Gradient")
	public var gradient:godot.Gradient;

	@:native("new")
	public function new():Void;

	@:native("SetGradient")
	public function setGradient(gradient:godot.Gradient):Void;

	@:native("GetGradient")
	public function getGradient():godot.Gradient;

	@:native("SetWidth")
	public function setWidth(width:Int):Void;

	@:native("SetHeight")
	public function setHeight(height:Int):Void;

	@:native("SetUseHdr")
	public function setUseHdr(enabled:Bool):Void;

	@:native("IsUsingHdr")
	public function isUsingHdr():Bool;

	@:native("SetFill")
	public function setFill(fill:godot.GradientTexture2D_FillEnum):Void;

	@:native("GetFill")
	public function getFill():godot.GradientTexture2D_FillEnum;

	@:native("SetFillFrom")
	public function setFillFrom(fillFrom:godot.Vector2):Void;

	@:native("GetFillFrom")
	public function getFillFrom():godot.Vector2;

	@:native("SetFillTo")
	public function setFillTo(fillTo:godot.Vector2):Void;

	@:native("GetFillTo")
	public function getFillTo():godot.Vector2;

	@:native("SetRepeat")
	public function setRepeat(repeat:godot.GradientTexture2D_RepeatEnum):Void;

	@:native("GetRepeat")
	public function getRepeat():godot.GradientTexture2D_RepeatEnum;
}
