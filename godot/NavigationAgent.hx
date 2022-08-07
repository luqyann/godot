// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3D agent that is used in navigation to reach a location while avoiding static and dynamic obstacles. The dynamic obstacles are avoided using RVO (Reciprocal Velocity Obstacles) collision avoidance. The agent needs navigation data to work correctly. By default this node will register to the default `godot.World` navigation map. If this node is a child of a `godot.Navigation` node it will register to the navigation map of the navigation node or the function `godot.NavigationAgent.setNavigation` can be used to set the navigation node directly. `godot.NavigationAgent` is physics safe.

Note: After `godot.NavigationAgent.setTargetLocation` is used it is required to use the `godot.NavigationAgent.getNextLocation` function once every physics frame to update the internal path logic of the NavigationAgent. The returned vector position from this function should be used as the next movement position for the agent's parent Node.
**/
@:libType
@:csNative
@:native("Godot.NavigationAgent")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationAgent extends godot.Node {
	/**
		`navigation_finished` signal.
		
		Notifies when the final location is reached.
	**/
	public var onNavigationFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onNavigationFinished():Signal<Void->Void> {
		return new Signal(this, "navigation_finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`path_changed` signal.
		
		Notifies when the navigation path changes. This can be triggered by the navigation system or by the user changing the path.
	**/
	public var onPathChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onPathChanged():Signal<Void->Void> {
		return new Signal(this, "path_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`target_reached` signal.
		
		Notifies when the player-defined target, set with `setTargetLocation`, is reached.
	**/
	public var onTargetReached(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTargetReached():Signal<Void->Void> {
		return new Signal(this, "target_reached", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`velocity_computed` signal.
		
		Notifies when the collision avoidance velocity is calculated after a call to `setVelocity`.
	**/
	public var onVelocityComputed(get, never):Signal<(safeVelocity:Vector3)->Void>;
	@:dox(hide) @:noCompletion inline function get_onVelocityComputed():Signal<(safeVelocity:Vector3)->Void> {
		return new Signal(this, "velocity_computed", Signal.SignalHandlerVector3Void.connectSignal, Signal.SignalHandlerVector3Void.disconnectSignal, Signal.SignalHandlerVector3Void.isSignalConnected);
	}

	/**		
		Ignores collisions on the Y axis. Must be `true` to move on a horizontal plane.
	**/
	@:native("IgnoreY")
	public var ignoreY:Bool;

	/**		
		The maximum speed that an agent can move.
	**/
	@:native("MaxSpeed")
	public var maxSpeed:Single;

	/**		
		The minimal amount of time for which this agent's velocities, that are computed with the collision avoidance algorithm, are safe with respect to other agents. The larger the number, the sooner the agent will respond to other agents, but the less freedom in choosing its velocities. Must be positive.
	**/
	@:native("TimeHorizon")
	public var timeHorizon:Single;

	/**		
		The maximum number of neighbors for the agent to consider.
	**/
	@:native("MaxNeighbors")
	public var maxNeighbors:Int;

	/**		
		The distance to search for other agents.
	**/
	@:native("NeighborDist")
	public var neighborDist:Single;

	/**		
		The radius of the avoidance agent. This is the "body" of the avoidance agent and not the avoidance maneuver starting radius (which is controlled by `godot.NavigationAgent.neighborDist`).
		
		Does not affect normal pathfinding. To change an actor's pathfinding radius bake `godot.NavigationMesh` resources with a different `godot.NavigationMesh.agentRadius` property and use different navigation maps for each actor size.
	**/
	@:native("Radius")
	public var radius:Single;

	/**		
		If `true` the agent is registered for an RVO avoidance callback on the `godot.NavigationServer`. When `godot.NavigationAgent.setVelocity` is used and the processing is completed a `safe_velocity` Vector3 is received with a signal connection to `velocity_computed`. Avoidance processing with many registered agents has a significant performance cost and should only be enabled on agents that currently require it.
	**/
	@:native("AvoidanceEnabled")
	public var avoidanceEnabled:Bool;

	/**		
		A bitfield determining all navigation map layers the `godot.NavigationAgent` belongs to. On path requests the agent will ignore navmeshes without at least one matching layer.
	**/
	@:native("NavigationLayers")
	public var navigationLayers:UInt;

	/**		
		The maximum distance the agent is allowed away from the ideal path to the final location. This can happen due to trying to avoid collisions. When the maximum distance is exceeded, it recalculates the ideal path.
	**/
	@:native("PathMaxDistance")
	public var pathMaxDistance:Single;

	/**		
		The NavigationAgent height offset is subtracted from the y-axis value of any vector path position for this NavigationAgent. The NavigationAgent height offset does not change or influence the navigation mesh or pathfinding query result. Additional navigation maps that use regions with navigation meshes that the developer baked with appropriate agent radius or height values are required to support different-sized agents.
	**/
	@:native("AgentHeightOffset")
	public var agentHeightOffset:Single;

	/**		
		The distance threshold before the final target point is considered to be reached. This will allow an agent to not have to hit the point of the final target exactly, but only the area. If this value is set to low the NavigationAgent will be stuck in a repath loop cause it will constantly overshoot or undershoot the distance to the final target point on each physics frame update.
	**/
	@:native("TargetDesiredDistance")
	public var targetDesiredDistance:Single;

	/**		
		The distance threshold before a path point is considered to be reached. This will allow an agent to not have to hit a path point on the path exactly, but in the area. If this value is set to high the NavigationAgent will skip points on the path which can lead to leaving the navigation mesh. If this value is set to low the NavigationAgent will be stuck in a repath loop cause it will constantly overshoot or undershoot the distance to the next point on each physics frame update.
	**/
	@:native("PathDesiredDistance")
	public var pathDesiredDistance:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.RID` of this agent on the `godot.NavigationServer`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	@:native("SetAvoidanceEnabled")
	public function setAvoidanceEnabled(enabled:Bool):Void;

	@:native("GetAvoidanceEnabled")
	public function getAvoidanceEnabled():Bool;

	@:native("SetPathDesiredDistance")
	public function setPathDesiredDistance(desiredDistance:Single):Void;

	@:native("GetPathDesiredDistance")
	public function getPathDesiredDistance():Single;

	@:native("SetTargetDesiredDistance")
	public function setTargetDesiredDistance(desiredDistance:Single):Void;

	@:native("GetTargetDesiredDistance")
	public function getTargetDesiredDistance():Single;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;

	@:native("SetAgentHeightOffset")
	public function setAgentHeightOffset(agentHeightOffset:Single):Void;

	@:native("GetAgentHeightOffset")
	public function getAgentHeightOffset():Single;

	@:native("SetIgnoreY")
	public function setIgnoreY(ignore:Bool):Void;

	@:native("GetIgnoreY")
	public function getIgnoreY():Bool;

	/**		
		Sets the `godot.Navigation` node used by the agent. Useful when you don't want to make the agent a child of a `godot.Navigation` node.
	**/
	@:native("SetNavigation")
	public function setNavigation(navigation:godot.Node):Void;

	/**		
		Returns the `godot.Navigation` node that the agent is using for its navigation system.
	**/
	@:native("GetNavigation")
	public function getNavigation():godot.Node;

	@:native("SetNeighborDist")
	public function setNeighborDist(neighborDist:Single):Void;

	@:native("GetNeighborDist")
	public function getNeighborDist():Single;

	@:native("SetMaxNeighbors")
	public function setMaxNeighbors(maxNeighbors:Int):Void;

	@:native("GetMaxNeighbors")
	public function getMaxNeighbors():Int;

	@:native("SetTimeHorizon")
	public function setTimeHorizon(timeHorizon:Single):Void;

	@:native("GetTimeHorizon")
	public function getTimeHorizon():Single;

	@:native("SetMaxSpeed")
	public function setMaxSpeed(maxSpeed:Single):Void;

	@:native("GetMaxSpeed")
	public function getMaxSpeed():Single;

	@:native("SetPathMaxDistance")
	public function setPathMaxDistance(maxSpeed:Single):Void;

	@:native("GetPathMaxDistance")
	public function getPathMaxDistance():Single;

	@:native("SetNavigationLayers")
	public function setNavigationLayers(navigationLayers:UInt):Void;

	@:native("GetNavigationLayers")
	public function getNavigationLayers():UInt;

	/**		
		Sets the `godot.RID` of the navigation map this NavigationAgent node should use and also updates the `agent` on the NavigationServer.
	**/
	@:native("SetNavigationMap")
	public function setNavigationMap(navigationMap:godot.RID):Void;

	/**		
		Returns the `godot.RID` of the navigation map for this NavigationAgent node. This function returns always the map set on the NavigationAgent node and not the map of the abstract agent on the NavigationServer. If the agent map is changed directly with the NavigationServer API the NavigationAgent node will not be aware of the map change. Use `godot.NavigationAgent.setNavigationMap` to change the navigation map for the NavigationAgent and also update the agent on the NavigationServer.
	**/
	@:native("GetNavigationMap")
	public function getNavigationMap():godot.RID;

	/**		
		Sets the user desired final location. This will clear the current navigation path.
	**/
	@:native("SetTargetLocation")
	public function setTargetLocation(location:godot.Vector3):Void;

	/**		
		Returns the user-defined target location (set with `godot.NavigationAgent.setTargetLocation`).
	**/
	@:native("GetTargetLocation")
	public function getTargetLocation():godot.Vector3;

	/**		
		Returns the next location in global coordinates that can be moved to, making sure that there are no static objects in the way. If the agent does not have a navigation path, it will return the position of the agent's parent. The use of this function once every physics frame is required to update the internal path logic of the NavigationAgent.
	**/
	@:native("GetNextLocation")
	public function getNextLocation():godot.Vector3;

	/**		
		Returns the distance to the target location, using the agent's global position. The user must set the target location with `godot.NavigationAgent.setTargetLocation` in order for this to be accurate.
	**/
	@:native("DistanceToTarget")
	public function distanceToTarget():Single;

	/**		
		Sends the passed in velocity to the collision avoidance algorithm. It will adjust the velocity to avoid collisions. Once the adjustment to the velocity is complete, it will emit the `velocity_computed` signal.
	**/
	@:native("SetVelocity")
	public function setVelocity(velocity:godot.Vector3):Void;

	/**		
		Returns this agent's current path from start to finish in global coordinates. The path only updates when the target location is changed or the agent requires a repath. The path array is not intended to be used in direct path movement as the agent has its own internal path logic that would get corrupted by changing the path array manually. Use the intended `godot.NavigationAgent.getNextLocation` once every physics frame to receive the next path point for the agents movement as this function also updates the internal path logic.
	**/
	public extern inline function getNavPath():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetNavPath()", this));
	}

	/**		
		Returns which index the agent is currently on in the navigation path's `godot.Vector3`.
	**/
	@:native("GetNavPathIndex")
	public function getNavPathIndex():Int;

	/**		
		Returns `true` if the target location is reached. The target location is set using `godot.NavigationAgent.setTargetLocation`. It may not always be possible to reach the target location. It should always be possible to reach the final location though. See `godot.NavigationAgent.getFinalLocation`.
	**/
	@:native("IsTargetReached")
	public function isTargetReached():Bool;

	/**		
		Returns `true` if the target location is reachable. The target location is set using `godot.NavigationAgent.setTargetLocation`.
	**/
	@:native("IsTargetReachable")
	public function isTargetReachable():Bool;

	/**		
		Returns `true` if the navigation path's final location has been reached.
	**/
	@:native("IsNavigationFinished")
	public function isNavigationFinished():Bool;

	/**		
		Returns the reachable final location in global coordinates. This can change if the navigation path is altered in any way. Because of this, it would be best to check this each frame.
	**/
	@:native("GetFinalLocation")
	public function getFinalLocation():godot.Vector3;
}
