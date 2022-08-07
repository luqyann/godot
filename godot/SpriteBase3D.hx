// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A node that displays 2D texture information in a 3D environment.
**/
@:libType
@:csNative
@:native("Godot.SpriteBase3D")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class SpriteBase3D extends godot.GeometryInstance {
	/**		
		Sets the render priority for the sprite. Higher priority objects will be sorted in front of lower priority objects.
		
		Note: This only applies if `godot.SpriteBase3D.alphaCut` is set to `godot.SpriteBase3D_AlphaCutMode.disabled` (default value).
		
		Note: This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).
	**/
	@:native("RenderPriority")
	public var renderPriority:Int;

	@:native("AlphaCut")
	public var alphaCut:godot.SpriteBase3D_AlphaCutMode;

	/**		
		If `true`, the label is rendered at the same size regardless of distance.
	**/
	@:native("FixedSize")
	public var fixedSize:Bool;

	/**		
		If `true`, depth testing is disabled and the object will be drawn in render order.
	**/
	@:native("NoDepthTest")
	public var noDepthTest:Bool;

	/**		
		If `true`, texture can be seen from the back as well, if `false`, it is invisible when looking at it from behind.
	**/
	@:native("DoubleSided")
	public var doubleSided:Bool;

	/**		
		If `true`, the `godot.Light` in the `godot.Environment` has effects on the sprite.
	**/
	@:native("Shaded")
	public var shaded:Bool;

	/**		
		If `true`, the texture's transparency and the opacity are used to make those parts of the sprite invisible.
	**/
	@:native("Transparent")
	public var transparent:Bool;

	@:native("Billboard")
	public var billboard:godot.SpatialMaterial_BillboardMode;

	/**		
		The direction in which the front of the texture faces.
	**/
	@:native("Axis")
	public var axis:godot.Vector3_Axis;

	/**		
		The size of one pixel's width on the sprite to scale it in 3D.
	**/
	@:native("PixelSize")
	public var pixelSize:Single;

	/**		
		The texture's visibility on a scale from `0` (fully invisible) to `1` (fully visible). `godot.SpriteBase3D.opacity` is a multiplier for the `godot.SpriteBase3D.modulate` color's alpha channel.
		
		Note: If a `godot.GeometryInstance.materialOverride` is defined on the `godot.SpriteBase3D`, the material override must be configured to take vertex colors into account for albedo. Otherwise, the opacity defined in `godot.SpriteBase3D.opacity` will be ignored. For a `godot.SpatialMaterial`, `godot.SpatialMaterial.vertexColorUseAsAlbedo` must be `true`. For a `godot.ShaderMaterial`, `ALPHA *= COLOR.a;` must be inserted in the shader's `fragment()` function.
	**/
	@:native("Opacity")
	public var opacity:Single;

	/**		
		A color value used to multiply the texture's colors. Can be used for mood-coloring or to simulate the color of light.
		
		Note: If a `godot.GeometryInstance.materialOverride` is defined on the `godot.SpriteBase3D`, the material override must be configured to take vertex colors into account for albedo. Otherwise, the color defined in `godot.SpriteBase3D.modulate` will be ignored. For a `godot.SpatialMaterial`, `godot.SpatialMaterial.vertexColorUseAsAlbedo` must be `true`. For a `godot.ShaderMaterial`, `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function.
	**/
	@:native("Modulate")
	public var modulate:godot.Color;

	/**		
		If `true`, texture is flipped vertically.
	**/
	@:native("FlipV")
	public var flipV:Bool;

	/**		
		If `true`, texture is flipped horizontally.
	**/
	@:native("FlipH")
	public var flipH:Bool;

	/**		
		The texture's drawing offset.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		If `true`, texture will be centered.
	**/
	@:native("Centered")
	public var centered:Bool;

	@:native("SetCentered")
	public function setCentered(centered:Bool):Void;

	@:native("IsCentered")
	public function isCentered():Bool;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetFlipH")
	public function setFlipH(flipH:Bool):Void;

	@:native("IsFlippedH")
	public function isFlippedH():Bool;

	@:native("SetFlipV")
	public function setFlipV(flipV:Bool):Void;

	@:native("IsFlippedV")
	public function isFlippedV():Bool;

	@:native("SetModulate")
	public function setModulate(modulate:godot.Color):Void;

	@:native("GetModulate")
	public function getModulate():godot.Color;

	@:native("SetOpacity")
	public function setOpacity(opacity:Single):Void;

	@:native("GetOpacity")
	public function getOpacity():Single;

	@:native("SetRenderPriority")
	public function setRenderPriority(priority:Int):Void;

	@:native("GetRenderPriority")
	public function getRenderPriority():Int;

	@:native("SetPixelSize")
	public function setPixelSize(pixelSize:Single):Void;

	@:native("GetPixelSize")
	public function getPixelSize():Single;

	@:native("SetAxis")
	public function setAxis(axis:godot.Vector3_Axis):Void;

	@:native("GetAxis")
	public function getAxis():godot.Vector3_Axis;

	/**		
		If `true`, the specified flag will be enabled.
	**/
	@:native("SetDrawFlag")
	public function setDrawFlag(flag:godot.SpriteBase3D_DrawFlags, enabled:Bool):Void;

	/**		
		Returns the value of the specified flag.
	**/
	@:native("GetDrawFlag")
	public function getDrawFlag(flag:godot.SpriteBase3D_DrawFlags):Bool;

	@:native("SetAlphaCutMode")
	public function setAlphaCutMode(mode:godot.SpriteBase3D_AlphaCutMode):Void;

	@:native("GetAlphaCutMode")
	public function getAlphaCutMode():godot.SpriteBase3D_AlphaCutMode;

	@:native("SetBillboardMode")
	public function setBillboardMode(mode:godot.SpatialMaterial_BillboardMode):Void;

	@:native("GetBillboardMode")
	public function getBillboardMode():godot.SpatialMaterial_BillboardMode;

	/**		
		Returns the rectangle representing this sprite.
	**/
	@:native("GetItemRect")
	public function getItemRect():godot.Rect2;

	@:native("GenerateTriangleMesh")
	public function generateTriangleMesh():godot.TriangleMesh;
}
