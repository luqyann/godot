// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
NavigationServer is the server responsible for all 3D navigation. It handles several objects, namely maps, regions and agents.

Maps are made up of regions, which are made of navigation meshes. Together, they define the navigable areas in the 3D world.

Note: Most NavigationServer changes take effect after the next physics frame and not immediately. This includes all changes made to maps, regions or agents by navigation related Nodes in the SceneTree or made through scripts.

For two regions to be connected to each other, they must share a similar edge. An edge is considered connected to another if both of its two vertices are at a distance less than `godot.Navigation.edgeConnectionMargin` to the respective other edge's vertex.

To use the collision avoidance system, you may use agents. You can set an agent's target velocity, then the servers will emit a callback with a modified velocity.

Note: The collision avoidance system ignores regions. Using the modified velocity as-is might lead to pushing and agent outside of a navigable area. This is a limitation of the collision avoidance system, any more complex situation may require the use of the physics engine.

This server keeps tracks of any call and executes them during the sync phase. This means that you can request any change to the map, using any thread, without worrying.
**/
@:libType
@:csNative
@:native("Godot.NavigationServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationServer {
	/**
		`map_changed` signal.
		
		Emitted when a navigation map is updated, when a region moves or is modified.
	**/
	public static var onMapChanged(get, never):Signal<(map:RID)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onMapChanged():Signal<(map:RID)->Void> {
		return new Signal(SINGLETON, "map_changed", Signal.SignalHandlerRIDVoid.connectSignal, Signal.SignalHandlerRIDVoid.disconnectSignal, Signal.SignalHandlerRIDVoid.isSignalConnected);
	}

	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns all created navigation map `godot.RID`s on the NavigationServer. This returns both 2D and 3D created navigation maps as there is technically no distinction between them.
	**/
	@:native("GetMaps")
	public static function getMaps():godot.collections.Array;

	/**		
		Create a new map.
	**/
	@:native("MapCreate")
	public static function mapCreate():godot.RID;

	/**		
		Sets the map active.
	**/
	@:native("MapSetActive")
	public static function mapSetActive(map:godot.RID, active:Bool):Void;

	/**		
		Returns `true` if the map is active.
	**/
	@:native("MapIsActive")
	public static function mapIsActive(nap:godot.RID):Bool;

	/**		
		Sets the map up direction.
	**/
	@:native("MapSetUp")
	public static function mapSetUp(map:godot.RID, up:godot.Vector3):Void;

	/**		
		Returns the map's up direction.
	**/
	@:native("MapGetUp")
	public static function mapGetUp(map:godot.RID):godot.Vector3;

	/**		
		Set the map cell size used to weld the navigation mesh polygons.
	**/
	@:native("MapSetCellSize")
	public static function mapSetCellSize(map:godot.RID, cellSize:Single):Void;

	/**		
		Returns the map cell size.
	**/
	@:native("MapGetCellSize")
	public static function mapGetCellSize(map:godot.RID):Single;

	/**		
		Set the map cell height used to weld the navigation mesh polygons.
	**/
	@:native("MapSetCellHeight")
	public static function mapSetCellHeight(map:godot.RID, cellHeight:Single):Void;

	/**		
		Returns the map cell height.
	**/
	@:native("MapGetCellHeight")
	public static function mapGetCellHeight(map:godot.RID):Single;

	/**		
		Set the map edge connection margin used to weld the compatible region edges.
	**/
	@:native("MapSetEdgeConnectionMargin")
	public static function mapSetEdgeConnectionMargin(map:godot.RID, margin:Single):Void;

	/**		
		Returns the edge connection margin of the map. This distance is the minimum vertex distance needed to connect two edges from different regions.
	**/
	@:native("MapGetEdgeConnectionMargin")
	public static function mapGetEdgeConnectionMargin(map:godot.RID):Single;

	#if doc_gen
	/**		
		Returns the navigation path to reach the destination from the origin. `navigation_layers` is a bitmask of all region layers that are allowed to be in the path.
	**/
	public static extern inline function mapGetPath(map:godot.RID, origin:godot.Vector3, destination:godot.Vector3, optimize:Bool, ?navigationLayers:UInt):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("MapGetPath({0}, {1}, {2}, {3}, {4})", map, origin, destination, optimize, navigationLayers));
	}
	#else
	/**		
		Returns the navigation path to reach the destination from the origin. `navigation_layers` is a bitmask of all region layers that are allowed to be in the path.
	**/
	public static overload extern inline function mapGetPath(map:godot.RID, origin:godot.Vector3, destination:godot.Vector3, optimize:Bool):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("MapGetPath({0}, {1}, {2}, {3})", map, origin, destination, optimize));
	}

	/**		
		Returns the navigation path to reach the destination from the origin. `navigation_layers` is a bitmask of all region layers that are allowed to be in the path.
	**/
	public static overload extern inline function mapGetPath(map:godot.RID, origin:godot.Vector3, destination:godot.Vector3, optimize:Bool, navigationLayers:UInt):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("MapGetPath({0}, {1}, {2}, {3}, {4})", map, origin, destination, optimize, navigationLayers));
	}
	#end

	#if doc_gen
	/**		
		Returns the closest point between the navigation surface and the segment.
	**/
	@:native("MapGetClosestPointToSegment")
	public static function mapGetClosestPointToSegment(map:godot.RID, start:godot.Vector3, end:godot.Vector3, ?useCollision:Bool):godot.Vector3;
	#else
	/**		
		Returns the closest point between the navigation surface and the segment.
	**/
	@:native("MapGetClosestPointToSegment")
	public static overload function mapGetClosestPointToSegment(map:godot.RID, start:godot.Vector3, end:godot.Vector3):godot.Vector3;

	/**		
		Returns the closest point between the navigation surface and the segment.
	**/
	@:native("MapGetClosestPointToSegment")
	public static overload function mapGetClosestPointToSegment(map:godot.RID, start:godot.Vector3, end:godot.Vector3, useCollision:Bool):godot.Vector3;
	#end

	/**		
		Returns the point closest to the provided `to_point` on the navigation mesh surface.
	**/
	@:native("MapGetClosestPoint")
	public static function mapGetClosestPoint(map:godot.RID, toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the normal for the point returned by `godot.NavigationServer.mapGetClosestPoint`.
	**/
	@:native("MapGetClosestPointNormal")
	public static function mapGetClosestPointNormal(map:godot.RID, toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the owner region RID for the point returned by `godot.NavigationServer.mapGetClosestPoint`.
	**/
	@:native("MapGetClosestPointOwner")
	public static function mapGetClosestPointOwner(map:godot.RID, toPoint:godot.Vector3):godot.RID;

	/**		
		Returns all navigation regions `godot.RID`s that are currently assigned to the requested navigation `map`.
	**/
	@:native("MapGetRegions")
	public static function mapGetRegions(map:godot.RID):godot.collections.Array;

	/**		
		Returns all navigation agents `godot.RID`s that are currently assigned to the requested navigation `map`.
	**/
	@:native("MapGetAgents")
	public static function mapGetAgents(map:godot.RID):godot.collections.Array;

	/**		
		This function immediately forces synchronization of the specified navigation `map` `godot.RID`. By default navigation maps are only synchronized at the end of each physics frame. This function can be used to immediately (re)calculate all the navigation meshes and region connections of the navigation map. This makes it possible to query a navigation path for a changed map immediately and in the same frame (multiple times if needed).
		
		Due to technical restrictions the current NavigationServer command queue will be flushed. This means all already queued update commands for this physics frame will be executed, even those intended for other maps, regions and agents not part of the specified map. The expensive computation of the navigation meshes and region connections of a map will only be done for the specified map. Other maps will receive the normal synchronization at the end of the physics frame. Should the specified map receive changes after the forced update it will update again as well when the other maps receive their update.
		
		Avoidance processing and dispatch of the `safe_velocity` signals is untouched by this function and continues to happen for all maps and agents at the end of the physics frame.
		
		Note: With great power comes great responsibility. This function should only be used by users that really know what they are doing and have a good reason for it. Forcing an immediate update of a navigation map requires locking the NavigationServer and flushing the entire NavigationServer command queue. Not only can this severely impact the performance of a game but it can also introduce bugs if used inappropriately without much foresight.
	**/
	@:native("MapForceUpdate")
	public static function mapForceUpdate(map:godot.RID):Void;

	/**		
		Creates a new region.
	**/
	@:native("RegionCreate")
	public static function regionCreate():godot.RID;

	/**		
		Sets the `enter_cost` for this `region`.
	**/
	@:native("RegionSetEnterCost")
	public static function regionSetEnterCost(region:godot.RID, enterCost:Single):Void;

	/**		
		Returns the `enter_cost` of this `region`.
	**/
	@:native("RegionGetEnterCost")
	public static function regionGetEnterCost(region:godot.RID):Single;

	/**		
		Sets the `travel_cost` for this `region`.
	**/
	@:native("RegionSetTravelCost")
	public static function regionSetTravelCost(region:godot.RID, travelCost:Single):Void;

	/**		
		Returns the `travel_cost` of this `region`.
	**/
	@:native("RegionGetTravelCost")
	public static function regionGetTravelCost(region:godot.RID):Single;

	/**		
		Returns `true` if the provided `point` in world space is currently owned by the provided navigation `region`. Owned in this context means that one of the region's navigation mesh polygon faces has a possible position at the closest distance to this point compared to all other navigation meshes from other navigation regions that are also registered on the navigation map of the provided region.
		
		If multiple navigation meshes have positions at equal distance the navigation region whose polygons are processed first wins the ownership. Polygons are processed in the same order that navigation regions were registered on the NavigationServer.
		
		Note: If navigation meshes from different navigation regions overlap (which should be avoided in general) the result might not be what is expected.
	**/
	@:native("RegionOwnsPoint")
	public static function regionOwnsPoint(region:godot.RID, point:godot.Vector3):Bool;

	/**		
		Sets the map for the region.
	**/
	@:native("RegionSetMap")
	public static function regionSetMap(region:godot.RID, map:godot.RID):Void;

	/**		
		Returns the navigation map `godot.RID` the requested `region` is currently assigned to.
	**/
	@:native("RegionGetMap")
	public static function regionGetMap(region:godot.RID):godot.RID;

	/**		
		Set the region's navigation layers. This allows selecting regions from a path request (when using `godot.NavigationServer.mapGetPath`).
	**/
	@:native("RegionSetNavigationLayers")
	public static function regionSetNavigationLayers(region:godot.RID, navigationLayers:UInt):Void;

	/**		
		Returns the region's navigation layers.
	**/
	@:native("RegionGetNavigationLayers")
	public static function regionGetNavigationLayers(region:godot.RID):UInt;

	/**		
		Sets the global transformation for the region.
	**/
	@:native("RegionSetTransform")
	public static function regionSetTransform(region:godot.RID, transform:godot.Transform):Void;

	/**		
		Sets the navigation mesh for the region.
	**/
	@:native("RegionSetNavmesh")
	public static function regionSetNavmesh(region:godot.RID, navMesh:godot.NavigationMesh):Void;

	/**		
		Bakes the navigation mesh.
	**/
	@:native("RegionBakeNavmesh")
	public static function regionBakeNavmesh(mesh:godot.NavigationMesh, node:godot.Node):Void;

	/**		
		Returns how many connections this `region` has with other regions in the map.
	**/
	@:native("RegionGetConnectionsCount")
	public static function regionGetConnectionsCount(region:godot.RID):Int;

	/**		
		Returns the starting point of a connection door. `connection` is an index between 0 and the return value of `godot.NavigationServer.regionGetConnectionsCount`.
	**/
	@:native("RegionGetConnectionPathwayStart")
	public static function regionGetConnectionPathwayStart(region:godot.RID, connection:Int):godot.Vector3;

	/**		
		Returns the ending point of a connection door. `connection` is an index between 0 and the return value of `godot.NavigationServer.regionGetConnectionsCount`.
	**/
	@:native("RegionGetConnectionPathwayEnd")
	public static function regionGetConnectionPathwayEnd(region:godot.RID, connection:Int):godot.Vector3;

	/**		
		Creates the agent.
	**/
	@:native("AgentCreate")
	public static function agentCreate():godot.RID;

	/**		
		Puts the agent in the map.
	**/
	@:native("AgentSetMap")
	public static function agentSetMap(agent:godot.RID, map:godot.RID):Void;

	/**		
		Returns the navigation map `godot.RID` the requested `agent` is currently assigned to.
	**/
	@:native("AgentGetMap")
	public static function agentGetMap(agent:godot.RID):godot.RID;

	/**		
		Sets the maximum distance to other agents this agent takes into account in the navigation. The larger this number, the longer the running time of the simulation. If the number is too low, the simulation will not be safe.
	**/
	@:native("AgentSetNeighborDist")
	public static function agentSetNeighborDist(agent:godot.RID, dist:Single):Void;

	/**		
		Sets the maximum number of other agents the agent takes into account in the navigation. The larger this number, the longer the running time of the simulation. If the number is too low, the simulation will not be safe.
	**/
	@:native("AgentSetMaxNeighbors")
	public static function agentSetMaxNeighbors(agent:godot.RID, count:Int):Void;

	/**		
		The minimal amount of time for which the agent's velocities that are computed by the simulation are safe with respect to other agents. The larger this number, the sooner this agent will respond to the presence of other agents, but the less freedom this agent has in choosing its velocities. Must be positive.
	**/
	@:native("AgentSetTimeHorizon")
	public static function agentSetTimeHorizon(agent:godot.RID, time:Single):Void;

	/**		
		Sets the radius of the agent.
	**/
	@:native("AgentSetRadius")
	public static function agentSetRadius(agent:godot.RID, radius:Single):Void;

	/**		
		Sets the maximum speed of the agent. Must be positive.
	**/
	@:native("AgentSetMaxSpeed")
	public static function agentSetMaxSpeed(agent:godot.RID, maxSpeed:Single):Void;

	/**		
		Sets the current velocity of the agent.
	**/
	@:native("AgentSetVelocity")
	public static function agentSetVelocity(agent:godot.RID, velocity:godot.Vector3):Void;

	/**		
		Sets the new target velocity.
	**/
	@:native("AgentSetTargetVelocity")
	public static function agentSetTargetVelocity(agent:godot.RID, targetVelocity:godot.Vector3):Void;

	/**		
		Sets the position of the agent in world space.
	**/
	@:native("AgentSetPosition")
	public static function agentSetPosition(agent:godot.RID, position:godot.Vector3):Void;

	/**		
		Returns `true` if the map got changed the previous frame.
	**/
	@:native("AgentIsMapChanged")
	public static function agentIsMapChanged(agent:godot.RID):Bool;

	#if doc_gen
	/**		
		Callback called at the end of the RVO process. If a callback is created manually and the agent is placed on a navigation map it will calculate avoidance for the agent and dispatch the calculated `safe_velocity` to the `receiver` object with a signal to the chosen `method` name.
		
		Note: Created callbacks are always processed independently of the SceneTree state as long as the agent is on a navigation map and not freed. To disable the dispatch of a callback from an agent use `godot.NavigationServer.agentSetCallback` again with a `null` object as the `receiver`.
	**/
	@:native("AgentSetCallback")
	public static function agentSetCallback(agent:godot.RID, receiver:godot.Object, method:std.String, ?userdata:Dynamic):Void;
	#else
	/**		
		Callback called at the end of the RVO process. If a callback is created manually and the agent is placed on a navigation map it will calculate avoidance for the agent and dispatch the calculated `safe_velocity` to the `receiver` object with a signal to the chosen `method` name.
		
		Note: Created callbacks are always processed independently of the SceneTree state as long as the agent is on a navigation map and not freed. To disable the dispatch of a callback from an agent use `godot.NavigationServer.agentSetCallback` again with a `null` object as the `receiver`.
	**/
	@:native("AgentSetCallback")
	public static overload function agentSetCallback(agent:godot.RID, receiver:godot.Object, method:std.String):Void;

	/**		
		Callback called at the end of the RVO process. If a callback is created manually and the agent is placed on a navigation map it will calculate avoidance for the agent and dispatch the calculated `safe_velocity` to the `receiver` object with a signal to the chosen `method` name.
		
		Note: Created callbacks are always processed independently of the SceneTree state as long as the agent is on a navigation map and not freed. To disable the dispatch of a callback from an agent use `godot.NavigationServer.agentSetCallback` again with a `null` object as the `receiver`.
	**/
	@:native("AgentSetCallback")
	public static overload function agentSetCallback(agent:godot.RID, receiver:godot.Object, method:std.String, userdata:Dynamic):Void;
	#end

	/**		
		Destroys the given RID.
	**/
	@:native("FreeRid")
	public static function freeRid(rid:godot.RID):Void;

	/**		
		Control activation of this server.
	**/
	@:native("SetActive")
	public static function setActive(active:Bool):Void;

	/**		
		Process the collision avoidance agents.
		
		The result of this process is needed by the physics server, so this must be called in the main thread.
		
		Note: This function is not thread safe.
	**/
	@:native("Process")
	public static function process(deltaTime:Single):Void;
}
