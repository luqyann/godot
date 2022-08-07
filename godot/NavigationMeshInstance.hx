// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An instance of a `godot.NavigationMesh`. It tells the `godot.Navigation` node what can be navigated and what cannot, based on the `godot.NavigationMesh` resource.

By default this node will register to the default `godot.World` navigation map. If this node is a child of a `godot.Navigation` node it will register to the navigation map of the navigation node.

Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using `godot.NavigationServer.mapSetEdgeConnectionMargin`.

Note: Overlapping two regions' navmeshes is not enough for connecting two regions. They must share a similar edge.

The cost of entering this region from another region can be controlled with the `godot.NavigationMeshInstance.enterCost` value.

Note: This value is not added to the path cost when the start position is already inside this region.

The cost of traveling distances inside this region can be controlled with the `godot.NavigationMeshInstance.travelCost` multiplier.
**/
@:libType
@:csNative
@:native("Godot.NavigationMeshInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMeshInstance extends godot.Spatial {
	/**
		`bake_finished` signal.
		
		Notifies when the navigation mesh bake operation is completed.
	**/
	public var onBakeFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onBakeFinished():Signal<Void->Void> {
		return new Signal(this, "bake_finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`navigation_mesh_changed` signal.
		
		Notifies when the `NavigationMesh` has changed.
	**/
	public var onNavigationMeshChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onNavigationMeshChanged():Signal<Void->Void> {
		return new Signal(this, "navigation_mesh_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

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
		A bitfield determining all navigation map layers the `godot.NavigationMesh` belongs to. On path requests with `godot.NavigationServer.mapGetPath` navmeshes without matching layers will be ignored and the navigation map will only proximity merge different navmeshes with matching layers.
	**/
	@:native("NavigationLayers")
	public var navigationLayers:UInt;

	/**		
		Determines if the `godot.NavigationMeshInstance` is enabled or disabled.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	/**		
		The `godot.NavigationMesh` resource to use.
	**/
	@:native("Navmesh")
	public var navmesh:godot.NavigationMesh;

	@:native("new")
	public function new():Void;

	@:native("SetNavigationMesh")
	public function setNavigationMesh(navmesh:godot.NavigationMesh):Void;

	@:native("GetNavigationMesh")
	public function getNavigationMesh():godot.NavigationMesh;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;

	@:native("SetNavigationLayers")
	public function setNavigationLayers(navigationLayers:UInt):Void;

	@:native("GetNavigationLayers")
	public function getNavigationLayers():UInt;

	/**		
		Returns the `godot.RID` of this region on the `godot.NavigationServer`. Combined with `godot.NavigationServer.mapGetClosestPointOwner` can be used to identify the `godot.NavigationMeshInstance` closest to a point on the merged navigation map.
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

	#if doc_gen
	/**		
		Bakes the `godot.NavigationMesh`. If `on_thread` is set to `true` (default), the baking is done on a separate thread. Baking on separate thread is useful because navigation baking is not a cheap operation. When it is completed, it automatically sets the new `godot.NavigationMesh`. Please note that baking on separate thread may be very slow if geometry is parsed from meshes as async access to each mesh involves heavy synchronization. Also, please note that baking on a separate thread is automatically disabled on operating systems that cannot use threads (such as HTML5 with threads disabled).
	**/
	@:native("BakeNavigationMesh")
	public function bakeNavigationMesh(?onThread:Bool):Void;
	#else
	/**		
		Bakes the `godot.NavigationMesh`. If `on_thread` is set to `true` (default), the baking is done on a separate thread. Baking on separate thread is useful because navigation baking is not a cheap operation. When it is completed, it automatically sets the new `godot.NavigationMesh`. Please note that baking on separate thread may be very slow if geometry is parsed from meshes as async access to each mesh involves heavy synchronization. Also, please note that baking on a separate thread is automatically disabled on operating systems that cannot use threads (such as HTML5 with threads disabled).
	**/
	@:native("BakeNavigationMesh")
	public overload function bakeNavigationMesh():Void;

	/**		
		Bakes the `godot.NavigationMesh`. If `on_thread` is set to `true` (default), the baking is done on a separate thread. Baking on separate thread is useful because navigation baking is not a cheap operation. When it is completed, it automatically sets the new `godot.NavigationMesh`. Please note that baking on separate thread may be very slow if geometry is parsed from meshes as async access to each mesh involves heavy synchronization. Also, please note that baking on a separate thread is automatically disabled on operating systems that cannot use threads (such as HTML5 with threads disabled).
	**/
	@:native("BakeNavigationMesh")
	public overload function bakeNavigationMesh(onThread:Bool):Void;
	#end
}
