// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all; to other types of bodies, such as a character or a rigid body, these are the same as a static body. However, they have two main uses:

Simulated motion: When these bodies are moved manually, either from code or from an `godot.AnimationPlayer` (with `godot.AnimationPlayer.playbackProcessMode` set to "physics"), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).

Kinematic characters: KinematicBody2D also has an API for moving objects (the `godot.KinematicBody2D.moveAndCollide` and `godot.KinematicBody2D.moveAndSlide` methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but don't require advanced physics.
**/
@:libType
@:csNative
@:native("Godot.KinematicBody2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class KinematicBody2D extends godot.PhysicsBody2D {
	/**		
		Sets the behavior to apply when you leave a moving platform. By default, to be physically accurate, when you leave the last platform velocity is applied. See `godot.KinematicBody2D_MovingPlatformApplyVelocityOnLeaveEnum` constants for available behavior.
	**/
	@:native("MovingPlatformApplyVelocityOnLeave")
	public var movingPlatformApplyVelocityOnLeave:godot.KinematicBody2D_MovingPlatformApplyVelocityOnLeaveEnum;

	/**		
		If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via `godot.AnimationPlayer`, for example on moving platforms. Do not use together with `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndCollide` functions.
	**/
	@:native("Motion__syncToPhysics")
	public var motion__syncToPhysics:Bool;

	/**		
		Extra margin used for collision recovery in motion functions (see `godot.KinematicBody2D.moveAndCollide`, `godot.KinematicBody2D.moveAndSlide`, `godot.KinematicBody2D.moveAndSlideWithSnap`).
		
		If the body is at least this close to another body, it will consider them to be colliding and will be pushed away before performing the actual motion.
		
		A higher value means it's more flexible for detecting collision, which helps with consistently detecting walls and floors.
		
		A lower value forces the collision algorithm to use more exact detection, so it can be used in cases that specifically require precision, e.g at very low scale to avoid visible jittering, or for stability with a stack of kinematic bodies.
	**/
	@:native("Collision__safeMargin")
	public var collision__safeMargin:Single;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a `godot.KinematicCollision2D`, which contains information about the collision when stopped, or when touching another body along the motion.
		
		If `test_only` is `true`, the body does not move but the would-be collision information is given.
	**/
	@:native("MoveAndCollide")
	public function moveAndCollide(relVec:godot.Vector2, ?infiniteInertia:Bool, ?excludeRaycastShapes:Bool, ?testOnly:Bool):godot.KinematicCollision2D;
	#else
	/**		
		Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a `godot.KinematicCollision2D`, which contains information about the collision when stopped, or when touching another body along the motion.
		
		If `test_only` is `true`, the body does not move but the would-be collision information is given.
	**/
	@:native("MoveAndCollide")
	public overload function moveAndCollide(relVec:godot.Vector2):godot.KinematicCollision2D;

	/**		
		Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a `godot.KinematicCollision2D`, which contains information about the collision when stopped, or when touching another body along the motion.
		
		If `test_only` is `true`, the body does not move but the would-be collision information is given.
	**/
	@:native("MoveAndCollide")
	public overload function moveAndCollide(relVec:godot.Vector2, infiniteInertia:Bool):godot.KinematicCollision2D;

	/**		
		Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a `godot.KinematicCollision2D`, which contains information about the collision when stopped, or when touching another body along the motion.
		
		If `test_only` is `true`, the body does not move but the would-be collision information is given.
	**/
	@:native("MoveAndCollide")
	public overload function moveAndCollide(relVec:godot.Vector2, infiniteInertia:Bool, excludeRaycastShapes:Bool):godot.KinematicCollision2D;

	/**		
		Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a `godot.KinematicCollision2D`, which contains information about the collision when stopped, or when touching another body along the motion.
		
		If `test_only` is `true`, the body does not move but the would-be collision information is given.
	**/
	@:native("MoveAndCollide")
	public overload function moveAndCollide(relVec:godot.Vector2, infiniteInertia:Bool, excludeRaycastShapes:Bool, testOnly:Bool):godot.KinematicCollision2D;
	#end

	#if doc_gen
	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public function moveAndSlide(linearVelocity:godot.Vector2, ?upDirection:Null<godot.Vector2>, ?stopOnSlope:Bool, ?maxSlides:Int, ?floorMaxAngle:Single, ?infiniteInertia:Bool):godot.Vector2;
	#else
	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2):godot.Vector2;

	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2, upDirection:Nullable1<godot.Vector2>):godot.Vector2;

	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool):godot.Vector2;

	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int):godot.Vector2;

	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int, floorMaxAngle:Single):godot.Vector2;

	/**		
		Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `godot.KinematicBody2D` or `godot.RigidBody2D`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.
		
		This method should be used in `godot.Node._PhysicsProcess` (or in a method called by `godot.Node._PhysicsProcess`), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
		
		`linear_velocity` is the velocity vector in pixels per second. Unlike in `godot.KinematicBody2D.moveAndCollide`, you should not multiply it by `delta` — the physics engine handles applying the velocity.
		
		`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
		
		If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
		
		If the body collides, it will change direction a maximum of `max_slides` times before it stops.
		
		`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
		
		If `infinite_inertia` is `true`, body will be able to push `godot.RigidBody2D` nodes, but it won't also detect any collisions with them. If `false`, it will interact with `godot.RigidBody2D` nodes like with `godot.StaticBody2D`.
		
		Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use `godot.KinematicBody2D.getSlideCollision`.
		
		When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlide")
	public overload function moveAndSlide(linearVelocity:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int, floorMaxAngle:Single, infiniteInertia:Bool):godot.Vector2;
	#end

	#if doc_gen
	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, ?upDirection:Null<godot.Vector2>, ?stopOnSlope:Bool, ?maxSlides:Int, ?floorMaxAngle:Single, ?infiniteInertia:Bool):godot.Vector2;
	#else
	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2):godot.Vector2;

	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, upDirection:Nullable1<godot.Vector2>):godot.Vector2;

	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool):godot.Vector2;

	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int):godot.Vector2;

	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int, floorMaxAngle:Single):godot.Vector2;

	/**		
		Moves the body while keeping it attached to slopes. Similar to `godot.KinematicBody2D.moveAndSlide`.
		
		As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using `godot.KinematicBody2D.moveAndSlide` instead.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("MoveAndSlideWithSnap")
	public overload function moveAndSlideWithSnap(linearVelocity:godot.Vector2, snap:godot.Vector2, upDirection:Nullable1<godot.Vector2>, stopOnSlope:Bool, maxSlides:Int, floorMaxAngle:Single, infiniteInertia:Bool):godot.Vector2;
	#end

	#if doc_gen
	/**		
		Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given `godot.Transform2D`, then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would stop the body from moving along the whole path.
		
		Use `godot.KinematicBody2D.moveAndCollide` instead for detecting collision with touching bodies.
	**/
	@:native("TestMove")
	public function testMove(from:godot.Transform2D, relVec:godot.Vector2, ?infiniteInertia:Bool):Bool;
	#else
	/**		
		Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given `godot.Transform2D`, then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would stop the body from moving along the whole path.
		
		Use `godot.KinematicBody2D.moveAndCollide` instead for detecting collision with touching bodies.
	**/
	@:native("TestMove")
	public overload function testMove(from:godot.Transform2D, relVec:godot.Vector2):Bool;

	/**		
		Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given `godot.Transform2D`, then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would stop the body from moving along the whole path.
		
		Use `godot.KinematicBody2D.moveAndCollide` instead for detecting collision with touching bodies.
	**/
	@:native("TestMove")
	public overload function testMove(from:godot.Transform2D, relVec:godot.Vector2, infiniteInertia:Bool):Bool;
	#end

	/**		
		Returns `true` if the body collided with the floor on the last call of `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap`. Otherwise, returns `false`.
	**/
	@:native("IsOnFloor")
	public function isOnFloor():Bool;

	/**		
		Returns `true` if the body collided with the ceiling on the last call of `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap`. Otherwise, returns `false`.
	**/
	@:native("IsOnCeiling")
	public function isOnCeiling():Bool;

	/**		
		Returns `true` if the body collided with a wall on the last call of `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap`. Otherwise, returns `false`.
	**/
	@:native("IsOnWall")
	public function isOnWall():Bool;

	/**		
		Returns the surface normal of the floor at the last collision point. Only valid after calling `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap` and when `godot.KinematicBody2D.isOnFloor` returns `true`.
	**/
	@:native("GetFloorNormal")
	public function getFloorNormal():godot.Vector2;

	#if doc_gen
	/**		
		Returns the floor's collision angle at the last collision point according to `up_direction`, which is `Vector2.UP` by default. This value is always positive and only valid after calling `godot.KinematicBody2D.moveAndSlide` and when `godot.KinematicBody2D.isOnFloor` returns `true`.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetFloorAngle")
	public function getFloorAngle(?upDirection:Null<godot.Vector2>):Single;
	#else
	/**		
		Returns the floor's collision angle at the last collision point according to `up_direction`, which is `Vector2.UP` by default. This value is always positive and only valid after calling `godot.KinematicBody2D.moveAndSlide` and when `godot.KinematicBody2D.isOnFloor` returns `true`.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetFloorAngle")
	public overload function getFloorAngle():Single;

	/**		
		Returns the floor's collision angle at the last collision point according to `up_direction`, which is `Vector2.UP` by default. This value is always positive and only valid after calling `godot.KinematicBody2D.moveAndSlide` and when `godot.KinematicBody2D.isOnFloor` returns `true`.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetFloorAngle")
	public overload function getFloorAngle(upDirection:Nullable1<godot.Vector2>):Single;
	#end

	/**		
		Returns the linear velocity of the floor at the last collision point. Only valid after calling `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap` and when `godot.KinematicBody2D.isOnFloor` returns `true`.
	**/
	@:native("GetFloorVelocity")
	public function getFloorVelocity():godot.Vector2;

	@:native("SetSafeMargin")
	public function setSafeMargin(pixels:Single):Void;

	@:native("GetSafeMargin")
	public function getSafeMargin():Single;

	@:native("SetMovingPlatformApplyVelocityOnLeave")
	public function setMovingPlatformApplyVelocityOnLeave(onLeaveApplyVelocity:godot.KinematicBody2D_MovingPlatformApplyVelocityOnLeaveEnum):Void;

	@:native("GetMovingPlatformApplyVelocityOnLeave")
	public function getMovingPlatformApplyVelocityOnLeave():godot.KinematicBody2D_MovingPlatformApplyVelocityOnLeaveEnum;

	/**		
		Returns the number of times the body collided and changed direction during the last call to `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap`.
	**/
	@:native("GetSlideCount")
	public function getSlideCount():Int;

	/**		
		Returns a `godot.KinematicCollision2D`, which contains information about a collision that occurred during the last call to `godot.KinematicBody2D.moveAndSlide` or `godot.KinematicBody2D.moveAndSlideWithSnap`. Since the body can collide several times in a single call to `godot.KinematicBody2D.moveAndSlide`, you must specify the index of the collision in the range 0 to (`godot.KinematicBody2D.getSlideCount` - 1).
		
		Example usage:
		
		```
		
		for i in get_slide_count():
		var collision = get_slide_collision(i)
		print("Collided with: ", collision.collider.name)
		
		```
	**/
	@:native("GetSlideCollision")
	public function getSlideCollision(slideIdx:Int):godot.KinematicCollision2D;

	/**		
		Returns a `godot.KinematicCollision2D`, which contains information about the latest collision that occurred during the last call to `godot.KinematicBody2D.moveAndSlide`.
	**/
	@:native("GetLastSlideCollision")
	public function getLastSlideCollision():godot.KinematicCollision2D;

	@:native("SetSyncToPhysics")
	public function setSyncToPhysics(enable:Bool):Void;

	@:native("IsSyncToPhysicsEnabled")
	public function isSyncToPhysicsEnabled():Bool;
}
