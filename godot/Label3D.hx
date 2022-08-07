// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Label3D displays plain text in a 3D world. It gives you control over the horizontal and vertical alignment.
**/
@:libType
@:csNative
@:native("Godot.Label3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Label3D extends godot.GeometryInstance {
	/**		
		Text width (in pixels), used for autowrap and fill alignment.
	**/
	@:native("Width")
	public var width:Single;

	/**		
		If `true`, wraps the text to the `godot.Label3D.width`.
	**/
	@:native("Autowrap")
	public var autowrap:Bool;

	/**		
		Vertical space between lines in multiline `godot.Label3D`.
	**/
	@:native("LineSpacing")
	public var lineSpacing:Single;

	/**		
		If `true`, all the text displays as UPPERCASE.
	**/
	@:native("Uppercase")
	public var uppercase:Bool;

	/**		
		Controls the text's vertical alignment. Supports top, center, bottom. Set it to one of the `godot.Label3D_VAlign` constants.
	**/
	@:native("VerticalAlignment")
	public var verticalAlignment:godot.Label3D_VAlign;

	/**		
		Controls the text's horizontal alignment. Supports left, center, right. Set it to one of the `godot.Label3D_Align` constants.
	**/
	@:native("HorizontalAlignment")
	public var horizontalAlignment:godot.Label3D_Align;

	/**		
		`godot.Font` used for the `godot.Label3D`'s text.
	**/
	@:native("Font")
	public var font:godot.Font;

	/**		
		The text to display on screen.
	**/
	@:native("Text")
	public var text:std.String;

	/**		
		The tint of `godot.Font`'s outline.
	**/
	@:native("OutlineModulate")
	public var outlineModulate:godot.Color;

	/**		
		Text `godot.Color` of the `godot.Label3D`.
	**/
	@:native("Modulate")
	public var modulate:godot.Color;

	/**		
		Sets the render priority for the text outline. Higher priority objects will be sorted in front of lower priority objects.
		
		Note: This only applies if `godot.Label3D.alphaCut` is set to `godot.Label3D_AlphaCutMode.disabled` (default value).
		
		Note: This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).
	**/
	@:native("OutlineRenderPriority")
	public var outlineRenderPriority:Int;

	/**		
		Sets the render priority for the text. Higher priority objects will be sorted in front of lower priority objects.
		
		Note: This only applies if `godot.Label3D.alphaCut` is set to `godot.Label3D_AlphaCutMode.disabled` (default value).
		
		Note: This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).
	**/
	@:native("RenderPriority")
	public var renderPriority:Int;

	/**		
		Threshold at which the alpha scissor will discard values.
	**/
	@:native("AlphaScissorThreshold")
	public var alphaScissorThreshold:Single;

	/**		
		The alpha cutting mode to use for the sprite. See `godot.Label3D_AlphaCutMode` for possible values.
	**/
	@:native("AlphaCut")
	public var alphaCut:godot.Label3D_AlphaCutMode;

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
		If `true`, text can be seen from the back as well, if `false`, it is invisible when looking at it from behind.
	**/
	@:native("DoubleSided")
	public var doubleSided:Bool;

	/**		
		If `true`, the `godot.Light` in the `godot.Environment` has effects on the label.
	**/
	@:native("Shaded")
	public var shaded:Bool;

	/**		
		The billboard mode to use for the label. See `godot.SpatialMaterial_BillboardMode` for possible values.
	**/
	@:native("Billboard")
	public var billboard:godot.SpatialMaterial_BillboardMode;

	/**		
		The text drawing offset (in pixels).
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		The size of one pixel's width on the label to scale it in 3D.
	**/
	@:native("PixelSize")
	public var pixelSize:Single;

	@:native("new")
	public function new():Void;

	@:native("SetHorizontalAlignment")
	public function setHorizontalAlignment(alignment:godot.Label3D_Align):Void;

	@:native("GetHorizontalAlignment")
	public function getHorizontalAlignment():godot.Label3D_Align;

	@:native("SetVerticalAlignment")
	public function setVerticalAlignment(alignment:godot.Label3D_VAlign):Void;

	@:native("GetVerticalAlignment")
	public function getVerticalAlignment():godot.Label3D_VAlign;

	@:native("SetModulate")
	public function setModulate(modulate:godot.Color):Void;

	@:native("GetModulate")
	public function getModulate():godot.Color;

	@:native("SetOutlineModulate")
	public function setOutlineModulate(modulate:godot.Color):Void;

	@:native("GetOutlineModulate")
	public function getOutlineModulate():godot.Color;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetUppercase")
	public function setUppercase(enable:Bool):Void;

	@:native("IsUppercase")
	public function isUppercase():Bool;

	@:native("SetRenderPriority")
	public function setRenderPriority(priority:Int):Void;

	@:native("GetRenderPriority")
	public function getRenderPriority():Int;

	@:native("SetOutlineRenderPriority")
	public function setOutlineRenderPriority(priority:Int):Void;

	@:native("GetOutlineRenderPriority")
	public function getOutlineRenderPriority():Int;

	@:native("SetFont")
	public function setFont(font:godot.Font):Void;

	@:native("GetFont")
	public function getFont():godot.Font;

	@:native("SetLineSpacing")
	public function setLineSpacing(lineSpacing:Single):Void;

	@:native("GetLineSpacing")
	public function getLineSpacing():Single;

	@:native("SetAutowrap")
	public function setAutowrap(autowrapMode:Bool):Void;

	@:native("GetAutowrap")
	public function getAutowrap():Bool;

	@:native("SetWidth")
	public function setWidth(width:Single):Void;

	@:native("GetWidth")
	public function getWidth():Single;

	@:native("SetPixelSize")
	public function setPixelSize(pixelSize:Single):Void;

	@:native("GetPixelSize")
	public function getPixelSize():Single;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	/**		
		If `true`, the specified flag will be enabled. See `godot.Label3D_DrawFlags` for a list of flags.
	**/
	@:native("SetDrawFlag")
	public function setDrawFlag(flag:godot.Label3D_DrawFlags, enabled:Bool):Void;

	/**		
		Returns the value of the specified flag.
	**/
	@:native("GetDrawFlag")
	public function getDrawFlag(flag:godot.Label3D_DrawFlags):Bool;

	@:native("SetBillboardMode")
	public function setBillboardMode(mode:godot.SpatialMaterial_BillboardMode):Void;

	@:native("GetBillboardMode")
	public function getBillboardMode():godot.SpatialMaterial_BillboardMode;

	@:native("SetAlphaCutMode")
	public function setAlphaCutMode(mode:godot.Label3D_AlphaCutMode):Void;

	@:native("GetAlphaCutMode")
	public function getAlphaCutMode():godot.Label3D_AlphaCutMode;

	@:native("SetAlphaScissorThreshold")
	public function setAlphaScissorThreshold(threshold:Single):Void;

	@:native("GetAlphaScissorThreshold")
	public function getAlphaScissorThreshold():Single;

	/**		
		Returns a `godot.TriangleMesh` with the label's vertices following its current configuration (such as its `godot.Label3D.pixelSize`).
	**/
	@:native("GenerateTriangleMesh")
	public function generateTriangleMesh():godot.TriangleMesh;
}
