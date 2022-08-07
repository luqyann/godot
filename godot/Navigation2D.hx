// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Deprecated. `godot.Navigation2D` node and `godot.Navigation2D.getSimplePath` are deprecated and will be removed in a future version. Use `godot.Navigation2DServer.mapGetPath` instead.

Navigation2D provides navigation and pathfinding within a 2D area, specified as a collection of `godot.NavigationPolygon` resources. By default, these are automatically collected from child `godot.NavigationPolygonInstance` nodes.
**/
@:libType
@:csNative
@:native("Godot.Navigation2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Navigation2D extends godot.Node2D {
	/**		
		A bitfield determining all navigation map layers the navigation can use on a `godot.Navigation2D.getSimplePath` path query.
	**/
	@:native("NavigationLayers")
	public var navigationLayers:UInt;

	/**		
		This value is used to detect the near edges to connect compatible regions.
	**/
	@:native("EdgeConnectionMargin")
	public var edgeConnectionMargin:Single;

	/**		
		The XY plane cell size to use for fields.
	**/
	@:native("CellSize")
	public var cellSize:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns the object's `godot.RID`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	#if doc_gen
	/**		
		Deprecated. `godot.Navigation2D` node and `godot.Navigation2D.getSimplePath` are deprecated and will be removed in a future version. Use `godot.Navigation2DServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
	**/
	public extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2, ?optimize:Bool):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#else
	/**		
		Deprecated. `godot.Navigation2D` node and `godot.Navigation2D.getSimplePath` are deprecated and will be removed in a future version. Use `godot.Navigation2DServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2})", this, start, end));
	}

	/**		
		Deprecated. `godot.Navigation2D` node and `godot.Navigation2D.getSimplePath` are deprecated and will be removed in a future version. Use `godot.Navigation2DServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2, optimize:Bool):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#end

	/**		
		Returns the navigation point closest to the point given. Points are in local coordinate space.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPoint:godot.Vector2):godot.Vector2;

	/**		
		Returns the owner of the `godot.NavigationPolygon` which contains the navigation point closest to the point given. This is usually a `godot.NavigationPolygonInstance`.
	**/
	@:native("GetClosestPointOwner")
	public function getClosestPointOwner(toPoint:godot.Vector2):godot.RID;

	@:native("SetCellSize")
	public function setCellSize(cellSize:Single):Void;

	@:native("GetCellSize")
	public function getCellSize():Single;

	@:native("SetEdgeConnectionMargin")
	public function setEdgeConnectionMargin(margin:Single):Void;

	@:native("GetEdgeConnectionMargin")
	public function getEdgeConnectionMargin():Single;

	@:native("SetNavigationLayers")
	public function setNavigationLayers(navigationLayers:UInt):Void;

	@:native("GetNavigationLayers")
	public function getNavigationLayers():UInt;
}
