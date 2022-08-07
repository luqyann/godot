// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.OccluderShape`s are resources used by `godot.Occluder` nodes, allowing geometric occlusion culling.

The polygon must be a convex polygon. The polygon points can be created and deleted either in the Editor inspector or by calling `set_polygon_points`. The points of the edges can be set by dragging the handles in the Editor viewport.

Additionally each polygon occluder can optionally support a single hole. If you add at least three points in the Editor inspector to the hole, you can drag the edge points of the hole in the Editor viewport.

In general, the lower the number of edges in polygons and holes, the faster the system will operate at runtime, so in most cases you will want to use 4 points for each.
**/
@:libType
@:csNative
@:native("Godot.OccluderShapePolygon")
@:autoBuild(godot.Godot.buildUserClass())
extern class OccluderShapePolygon extends godot.OccluderShape {
	/**		
		Allows changing the hole geometry from code.
	**/
	@:native("HolePoints")
	public var holePoints:cs.NativeArray<godot.Vector2>;

	/**		
		Allows changing the polygon geometry from code.
	**/
	@:native("PolygonPoints")
	public var polygonPoints:cs.NativeArray<godot.Vector2>;

	/**		
		Specifies whether the occluder should operate from both sides. If `false`, the occluder will operate one way only.
	**/
	@:native("TwoWay")
	public var twoWay:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetTwoWay")
	public function setTwoWay(twoWay:Bool):Void;

	@:native("IsTwoWay")
	public function isTwoWay():Bool;

	@:native("SetPolygonPoints")
	public function setPolygonPoints(points:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPolygonPoints():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygonPoints()", this));
	}

	/**		
		Sets an individual polygon point position.
	**/
	@:native("SetPolygonPoint")
	public function setPolygonPoint(index:Int, position:godot.Vector2):Void;

	@:native("SetHolePoints")
	public function setHolePoints(points:HaxeArray<godot.Vector2>):Void;

	public extern inline function getHolePoints():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetHolePoints()", this));
	}

	/**		
		Sets an individual hole point position.
	**/
	@:native("SetHolePoint")
	public function setHolePoint(index:Int, position:godot.Vector2):Void;
}
