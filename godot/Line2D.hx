// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A line through several points in 2D space. Supports varying width and color over the line's length, texturing, and several cap/joint types.

Note: By default, Godot can only draw up to 4,096 polygon points at a time. To increase this limit, open the Project Settings and increase  and .
**/
@:libType
@:csNative
@:native("Godot.Line2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Line2D extends godot.Node2D {
	/**		
		If `true`, the line's border will attempt to perform antialiasing by drawing thin OpenGL smooth lines on the line's edges.
		
		Note: Line2D is not accelerated by batching if `godot.Line2D.antialiased` is `true`.
		
		Note: Due to how it works, built-in antialiasing will not look correct for translucent lines and may not work on certain platforms. As a workaround, install the [https://github.com/godot-extended-libraries/godot-antialiased-line2d](Antialiased Line2D) add-on then create an AntialiasedLine2D node. That node relies on a texture with custom mipmaps to perform antialiasing. 2D batching is also still supported with those antialiased lines.
	**/
	@:native("Antialiased")
	public var antialiased:Bool;

	/**		
		The smoothness of the rounded joints and caps. Higher values result in smoother corners, but are more demanding to render and update. This is only used if a cap or joint is set as round.
		
		Note: The default value is tuned for lines with the default `godot.Line2D.width`. For thin lines, this value should be reduced to a number between `2` and `4` to improve performance.
	**/
	@:native("RoundPrecision")
	public var roundPrecision:Int;

	/**		
		The direction difference in radians between vector points. This value is only used if `godot.Line2D.jointMode` is set to `godot.Line2D_LineJointMode.sharp`.
	**/
	@:native("SharpLimit")
	public var sharpLimit:Single;

	/**		
		Controls the style of the line's last point. Use `godot.Line2D_LineCapMode` constants.
	**/
	@:native("EndCapMode")
	public var endCapMode:godot.Line2D_LineCapMode;

	/**		
		Controls the style of the line's first point. Use `godot.Line2D_LineCapMode` constants.
	**/
	@:native("BeginCapMode")
	public var beginCapMode:godot.Line2D_LineCapMode;

	/**		
		The style for the points between the start and the end.
	**/
	@:native("JointMode")
	public var jointMode:godot.Line2D_LineJointMode;

	/**		
		The style to render the `texture` on the line. Use `godot.Line2D_LineTextureMode` constants.
	**/
	@:native("TextureMode")
	public var textureMode:godot.Line2D_LineTextureMode;

	/**		
		The texture used for the line's texture. Uses `texture_mode` for drawing style.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		The gradient is drawn through the whole line from start to finish. The default color will not be used if a gradient is set.
	**/
	@:native("Gradient")
	public var gradient:godot.Gradient;

	/**		
		The line's color. Will not be used if a gradient is set.
	**/
	@:native("DefaultColor")
	public var defaultColor:godot.Color;

	/**		
		The line's width varies with the curve. The original width is simply multiply by the value of the Curve.
	**/
	@:native("WidthCurve")
	public var widthCurve:godot.Curve;

	/**		
		The line's width.
	**/
	@:native("Width")
	public var width:Single;

	/**		
		The points that form the lines. The line is drawn between every point set in this array. Points are interpreted as local vectors.
	**/
	@:native("Points")
	public var points:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	@:native("SetPoints")
	public function setPoints(points:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPoints():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPoints()", this));
	}

	/**		
		Overwrites the position in point `i` with the supplied `position`.
	**/
	@:native("SetPointPosition")
	public function setPointPosition(i:Int, position:godot.Vector2):Void;

	/**		
		Returns point `i`'s position.
	**/
	@:native("GetPointPosition")
	public function getPointPosition(i:Int):godot.Vector2;

	/**		
		Returns the Line2D's amount of points.
	**/
	@:native("GetPointCount")
	public function getPointCount():Int;

	#if doc_gen
	/**		
		Adds a point at the `position`. Appends the point at the end of the line.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt; 0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
	**/
	@:native("AddPoint")
	public function addPoint(position:godot.Vector2, ?atPosition:Int):Void;
	#else
	/**		
		Adds a point at the `position`. Appends the point at the end of the line.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt; 0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2):Void;

	/**		
		Adds a point at the `position`. Appends the point at the end of the line.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt; 0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2, atPosition:Int):Void;
	#end

	/**		
		Removes the point at index `i` from the line.
	**/
	@:native("RemovePoint")
	public function removePoint(i:Int):Void;

	/**		
		Removes all points from the line.
	**/
	@:native("ClearPoints")
	public function clearPoints():Void;

	@:native("SetWidth")
	public function setWidth(width:Single):Void;

	@:native("GetWidth")
	public function getWidth():Single;

	@:native("SetCurve")
	public function setCurve(curve:godot.Curve):Void;

	@:native("GetCurve")
	public function getCurve():godot.Curve;

	@:native("SetDefaultColor")
	public function setDefaultColor(color:godot.Color):Void;

	@:native("GetDefaultColor")
	public function getDefaultColor():godot.Color;

	@:native("SetGradient")
	public function setGradient(color:godot.Gradient):Void;

	@:native("GetGradient")
	public function getGradient():godot.Gradient;

	@:native("SetTexture")
	public function setTexture(texture:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetTextureMode")
	public function setTextureMode(mode:godot.Line2D_LineTextureMode):Void;

	@:native("GetTextureMode")
	public function getTextureMode():godot.Line2D_LineTextureMode;

	@:native("SetJointMode")
	public function setJointMode(mode:godot.Line2D_LineJointMode):Void;

	@:native("GetJointMode")
	public function getJointMode():godot.Line2D_LineJointMode;

	@:native("SetBeginCapMode")
	public function setBeginCapMode(mode:godot.Line2D_LineCapMode):Void;

	@:native("GetBeginCapMode")
	public function getBeginCapMode():godot.Line2D_LineCapMode;

	@:native("SetEndCapMode")
	public function setEndCapMode(mode:godot.Line2D_LineCapMode):Void;

	@:native("GetEndCapMode")
	public function getEndCapMode():godot.Line2D_LineCapMode;

	@:native("SetSharpLimit")
	public function setSharpLimit(limit:Single):Void;

	@:native("GetSharpLimit")
	public function getSharpLimit():Single;

	@:native("SetRoundPrecision")
	public function setRoundPrecision(precision:Int):Void;

	@:native("GetRoundPrecision")
	public function getRoundPrecision():Int;

	@:native("SetAntialiased")
	public function setAntialiased(antialiased:Bool):Void;

	@:native("GetAntialiased")
	public function getAntialiased():Bool;
}
