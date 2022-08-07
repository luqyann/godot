// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Generate an `godot.PrimitiveMesh` from the text.

TextMesh can be generated only when using dynamic fonts with vector glyph contours. Bitmap fonts (including bitmap data in the TrueType/OpenType containers, like color emoji fonts) are not supported.

The UV layout is arranged in 4 horizontal strips, top to bottom: 40% of the height for the front face, 40% for the back face, 10% for the outer edges and 10% for the inner edges.
**/
@:libType
@:csNative
@:native("Godot.TextMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextMesh extends godot.PrimitiveMesh {
	/**		
		Depths of the mesh, if set to `0.0` only front surface, is generated, and UV layout is changed to use full texture for the front face only.
	**/
	@:native("Depth")
	public var depth:Single;

	/**		
		Step (in pixels) used to approximate Bézier curves.
	**/
	@:native("CurveStep")
	public var curveStep:Single;

	/**		
		The size of one pixel's width on the text to scale it in 3D.
	**/
	@:native("PixelSize")
	public var pixelSize:Single;

	/**		
		If `true`, all the text displays as UPPERCASE.
	**/
	@:native("Uppercase")
	public var uppercase:Bool;

	/**		
		Controls the text's horizontal alignment. Supports left, center and right. Set it to one of the `godot.TextMesh_Align` constants.
	**/
	@:native("HorizontalAlignment")
	public var horizontalAlignment:godot.TextMesh_Align;

	/**		
		`godot.Font` used for the `godot.TextMesh`'s text.
	**/
	@:native("Font")
	public var font:godot.Font;

	/**		
		The text to generate mesh from.
	**/
	@:native("Text")
	public var text:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetHorizontalAlignment")
	public function setHorizontalAlignment(alignment:godot.TextMesh_Align):Void;

	@:native("GetHorizontalAlignment")
	public function getHorizontalAlignment():godot.TextMesh_Align;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetFont")
	public function setFont(font:godot.Font):Void;

	@:native("GetFont")
	public function getFont():godot.Font;

	@:native("SetDepth")
	public function setDepth(depth:Single):Void;

	@:native("GetDepth")
	public function getDepth():Single;

	@:native("SetPixelSize")
	public function setPixelSize(pixelSize:Single):Void;

	@:native("GetPixelSize")
	public function getPixelSize():Single;

	@:native("SetCurveStep")
	public function setCurveStep(curveStep:Single):Void;

	@:native("GetCurveStep")
	public function getCurveStep():Single;

	@:native("SetUppercase")
	public function setUppercase(enable:Bool):Void;

	@:native("IsUppercase")
	public function isUppercase():Bool;
}
