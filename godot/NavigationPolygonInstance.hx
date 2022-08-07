// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A region of the navigation map. It tells the `godot.Navigation2DServer` what can be navigated and what cannot, based on its `godot.NavigationPolygon` resource.

By default this node will register to the default `godot.World2D` navigation map. If this node is a child of a `godot.Navigation2D` node it will register to the navigation map of the navigation node.

Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using `godot.Navigation2DServer.mapSetEdgeConnectionMargin`.

Note: Overlapping two regions' polygons is not enough for connecting two regions. They must share a similar edge.

The pathfinding cost of entering this region from another region can be controlled with the `godot.NavigationPolygonInstance.enterCost` value.

Note: This value is not added to the path cost when the start position is already inside this region.

The pathfinding cost of traveling distances inside this region can be controlled with the `godot.NavigationPolygonInstance.travelCost` multiplier.
**/
@:libType
@:csNative
@:native("Godot.NavigationPolygonInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationPolygonInstance extends godot.Node2D {
	/**		
		When pathfinding moves inside this region's navmesh the traveled distances are multiplied with `travel_cost` for determining the shortest path.
	**/
	@:native("TravelCost")
	public var travelCost:Single;

	/**		
		When pathfinding enters this region's navmesh from another regions navmesh the `enter_cost` value is added to the path distance for determining the shortest path.
	**/
	@:native("EnterCost")
	public var enterCost:Single;

	/**		
		A bitfield determining all navigation map layers the `godot.NavigationPolygon` belongs to. On path requests with `godot.Navigation2DServer.mapGetPath` navmeshes without matching layers will be ignored and the navigation map will only proximity merge different navmeshes with matching layers.
	**/
	@:native("NavigationLayers")
	public var navigationLayers:UInt;

	/**		
		Determines if the `godot.NavigationPolygonInstance` is enabled or disabled.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	/**		
		The `godot.NavigationPolygon` resource to use.
	**/
	@:native("Navpoly")
	public var navpoly:godot.NavigationPolygon;

	@:native("new")
	public function new():Void;

	@:native("SetNavigationPolygon")
	public function setNavigationPolygon(navpoly:godot.NavigationPolygon):Void;

	@:native("GetNavigationPolygon")
	public function getNavigationPolygon():godot.NavigationPolygon;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;

	@:native("SetNavigationLayers")
	public function setNavigationLayers(navigationLayers:UInt):Void;

	@:native("GetNavigationLayers")
	public function getNavigationLayers():UInt;

	/**		
		Returns the `godot.RID` of this region on the `godot.Navigation2DServer`. Combined with `godot.Navigation2DServer.mapGetClosestPointOwner` can be used to identify the `godot.NavigationPolygonInstance` closest to a point on the merged navigation map.
	**/
	@:native("GetRegionRid")
	public function getRegionRid():godot.RID;

	@:native("SetEnterCost")
	public function setEnterCost(enterCost:Single):Void;

	@:native("GetEnterCost")
	public function getEnterCost():Single;

	@:native("SetTravelCost")
	public function setTravelCost(travelCost:Single):Void;

	@:native("GetTravelCost")
	public function getTravelCost():Single;
}
