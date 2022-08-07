// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Deprecated. `godot.Navigation` node and `godot.Navigation.getSimplePath` are deprecated and will be removed in a future version. Use `godot.NavigationServer.mapGetPath` instead.

Provides navigation and pathfinding within a collection of `godot.NavigationMesh`es. By default, these will be automatically collected from child `godot.NavigationMeshInstance` nodes. In addition to basic pathfinding, this class also assists with aligning navigation agents with the meshes they are navigating on.
**/
@:libType
@:csNative
@:native("Godot.Navigation")
@:autoBuild(godot.Godot.buildUserClass())
extern class Navigation extends godot.Spatial {
	/**
		`map_changed` signal.
		
		Emitted when a navigation map is updated, when a region moves or is modified.
	**/
	public var onMapChanged(get, never):Signal<(map:RID)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMapChanged():Signal<(map:RID)->Void> {
		return new Signal(this, "map_changed", Signal.SignalHandlerRIDVoid.connectSignal, Signal.SignalHandlerRIDVoid.disconnectSignal, Signal.SignalHandlerRIDVoid.isSignalConnected);
	}

	/**		
		A bitfield determining all navigation map layers the navigation can use on a `godot.Navigation.getSimplePath` path query.
	**/
	@:native("NavigationLayers")
	public var navigationLayers:UInt;

	/**		
		This value is used to detect the near edges to connect compatible regions.
	**/
	@:native("EdgeConnectionMargin")
	public var edgeConnectionMargin:Single;

	/**		
		The cell height to use for fields.
	**/
	@:native("CellHeight")
	public var cellHeight:Single;

	/**		
		The XZ plane cell size to use for fields.
	**/
	@:native("CellSize")
	public var cellSize:Single;

	/**		
		Defines which direction is up. By default, this is `(0, 1, 0)`, which is the world's "up" direction.
	**/
	@:native("UpVector")
	public var upVector:godot.Vector3;

	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.RID` of the navigation map on the `godot.NavigationServer`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	#if doc_gen
	/**		
		Deprecated. `godot.Navigation` node and `godot.Navigation.getSimplePath` are deprecated and will be removed in a future version. Use `godot.NavigationServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
	**/
	public extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3, ?optimize:Bool):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#else
	/**		
		Deprecated. `godot.Navigation` node and `godot.Navigation.getSimplePath` are deprecated and will be removed in a future version. Use `godot.NavigationServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2})", this, start, end));
	}

	/**		
		Deprecated. `godot.Navigation` node and `godot.Navigation.getSimplePath` are deprecated and will be removed in a future version. Use `godot.NavigationServer.mapGetPath` instead.
		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3, optimize:Bool):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#end

	#if doc_gen
	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3, ?useCollision:Bool):godot.Vector3;
	#else
	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public overload function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3):godot.Vector3;

	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public overload function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3, useCollision:Bool):godot.Vector3;
	#end

	/**		
		Returns the navigation point closest to the point given. Points are in local coordinate space.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the surface normal at the navigation point closest to the point given. Useful for rotating a navigation agent according to the navigation mesh it moves on.
	**/
	@:native("GetClosestPointNormal")
	public function getClosestPointNormal(toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the owner of the `godot.NavigationMesh` which contains the navigation point closest to the point given. This is usually a `godot.NavigationMeshInstance`.
	**/
	@:native("GetClosestPointOwner")
	public function getClosestPointOwner(toPoint:godot.Vector3):godot.RID;

	@:native("SetUpVector")
	public function setUpVector(up:godot.Vector3):Void;

	@:native("GetUpVector")
	public function getUpVector():godot.Vector3;

	@:native("SetCellSize")
	public function setCellSize(cellSize:Single):Void;

	@:native("GetCellSize")
	public function getCellSize():Single;

	@:native("SetCellHeight")
	public function setCellHeight(cellHeight:Single):Void;

	@:native("GetCellHeight")
	public function getCellHeight():Single;

	@:native("SetEdgeConnectionMargin")
	public function setEdgeConnectionMargin(margin:Single):Void;

	@:native("GetEdgeConnectionMargin")
	public function getEdgeConnectionMargin():Single;

	@:native("SetNavigationLayers")
	public function setNavigationLayers(navigationLayers:UInt):Void;

	@:native("GetNavigationLayers")
	public function getNavigationLayers():UInt;
}
