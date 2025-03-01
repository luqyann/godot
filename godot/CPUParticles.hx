// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CPU-based 3D particle node used to create a variety of particle systems and effects.

See also `godot.Particles`, which provides the same functionality with hardware acceleration, but may not run on older devices.

Note: Unlike `godot.Particles`, the visibility rect is generated on-the-fly and doesn't need to be configured by the user.
**/
@:libType
@:csNative
@:native("Godot.CPUParticles")
@:autoBuild(godot.Godot.buildUserClass())
extern class CPUParticles extends godot.GeometryInstance {
	/**		
		Each particle's animation offset will vary along this `godot.Curve`.
	**/
	@:native("AnimOffsetCurve")
	public var animOffsetCurve:godot.Curve;

	/**		
		Animation offset randomness ratio.
	**/
	@:native("AnimOffsetRandom")
	public var animOffsetRandom:Single;

	/**		
		Particle animation offset.
	**/
	@:native("AnimOffset")
	public var animOffset:Single;

	/**		
		Each particle's animation speed will vary along this `godot.Curve`.
	**/
	@:native("AnimSpeedCurve")
	public var animSpeedCurve:godot.Curve;

	/**		
		Animation speed randomness ratio.
	**/
	@:native("AnimSpeedRandom")
	public var animSpeedRandom:Single;

	/**		
		Particle animation speed.
	**/
	@:native("AnimSpeed")
	public var animSpeed:Single;

	/**		
		Each particle's hue will vary along this `godot.Curve`.
	**/
	@:native("HueVariationCurve")
	public var hueVariationCurve:godot.Curve;

	/**		
		Hue variation randomness ratio.
	**/
	@:native("HueVariationRandom")
	public var hueVariationRandom:Single;

	/**		
		Initial hue variation applied to each particle.
	**/
	@:native("HueVariation")
	public var hueVariation:Single;

	/**		
		Each particle's initial color will vary along this `godot.GradientTexture` (multiplied with `godot.CPUParticles.color`).
	**/
	@:native("ColorInitialRamp")
	public var colorInitialRamp:godot.Gradient;

	/**		
		Each particle's color will vary along this `godot.GradientTexture` over its lifetime (multiplied with `godot.CPUParticles.color`).
	**/
	@:native("ColorRamp")
	public var colorRamp:godot.Gradient;

	/**		
		Each particle's initial color. To have particle display color in a `godot.SpatialMaterial` make sure to set `godot.SpatialMaterial.vertexColorUseAsAlbedo` to `true`.
	**/
	@:native("Color")
	public var color:godot.Color;

	/**		
		Each particle's scale will vary along this `godot.Curve`.
	**/
	@:native("ScaleAmountCurve")
	public var scaleAmountCurve:godot.Curve;

	/**		
		Scale randomness ratio.
	**/
	@:native("ScaleAmountRandom")
	public var scaleAmountRandom:Single;

	/**		
		Initial scale applied to each particle.
	**/
	@:native("ScaleAmount")
	public var scaleAmount:Single;

	/**		
		Each particle's rotation will be animated along this `godot.Curve`.
	**/
	@:native("AngleCurve")
	public var angleCurve:godot.Curve;

	/**		
		Rotation randomness ratio.
	**/
	@:native("AngleRandom")
	public var angleRandom:Single;

	/**		
		Initial rotation applied to each particle, in degrees.
	**/
	@:native("Angle")
	public var angle:Single;

	/**		
		Damping will vary along this `godot.Curve`.
	**/
	@:native("DampingCurve")
	public var dampingCurve:godot.Curve;

	/**		
		Damping randomness ratio.
	**/
	@:native("DampingRandom")
	public var dampingRandom:Single;

	/**		
		The rate at which particles lose velocity.
	**/
	@:native("Damping")
	public var damping:Single;

	/**		
		Each particle's tangential acceleration will vary along this `godot.Curve`.
	**/
	@:native("TangentialAccelCurve")
	public var tangentialAccelCurve:godot.Curve;

	/**		
		Tangential acceleration randomness ratio.
	**/
	@:native("TangentialAccelRandom")
	public var tangentialAccelRandom:Single;

	/**		
		Tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity giving the particles a swirling motion.
	**/
	@:native("TangentialAccel")
	public var tangentialAccel:Single;

	/**		
		Each particle's radial acceleration will vary along this `godot.Curve`.
	**/
	@:native("RadialAccelCurve")
	public var radialAccelCurve:godot.Curve;

	/**		
		Radial acceleration randomness ratio.
	**/
	@:native("RadialAccelRandom")
	public var radialAccelRandom:Single;

	/**		
		Radial acceleration applied to each particle. Makes particle accelerate away from origin.
	**/
	@:native("RadialAccel")
	public var radialAccel:Single;

	/**		
		Each particle's linear acceleration will vary along this `godot.Curve`.
	**/
	@:native("LinearAccelCurve")
	public var linearAccelCurve:godot.Curve;

	/**		
		Linear acceleration randomness ratio.
	**/
	@:native("LinearAccelRandom")
	public var linearAccelRandom:Single;

	/**		
		Linear acceleration applied to each particle in the direction of motion.
	**/
	@:native("LinearAccel")
	public var linearAccel:Single;

	/**		
		Each particle's orbital velocity will vary along this `godot.Curve`.
	**/
	@:native("OrbitVelocityCurve")
	public var orbitVelocityCurve:godot.Curve;

	/**		
		Orbital velocity randomness ratio.
	**/
	@:native("OrbitVelocityRandom")
	public var orbitVelocityRandom:Single;

	/**		
		Orbital velocity applied to each particle. Makes the particles circle around origin in the local XY plane. Specified in number of full rotations around origin per second.
		
		This property is only available when `godot.CPUParticles.flagDisableZ` is `true`.
	**/
	@:native("OrbitVelocity")
	public var orbitVelocity:Single;

	/**		
		Each particle's angular velocity will vary along this `godot.Curve`.
	**/
	@:native("AngularVelocityCurve")
	public var angularVelocityCurve:godot.Curve;

	/**		
		Angular velocity randomness ratio.
	**/
	@:native("AngularVelocityRandom")
	public var angularVelocityRandom:Single;

	/**		
		Initial angular velocity applied to each particle in degrees per second. Sets the speed of rotation of the particle.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:Single;

	/**		
		Initial velocity randomness ratio.
	**/
	@:native("InitialVelocityRandom")
	public var initialVelocityRandom:Single;

	/**		
		Initial velocity magnitude for each particle. Direction comes from `godot.CPUParticles.spread` and the node's orientation.
	**/
	@:native("InitialVelocity")
	public var initialVelocity:Single;

	/**		
		Gravity applied to every particle.
	**/
	@:native("Gravity")
	public var gravity:godot.Vector3;

	/**		
		Amount of `godot.CPUParticles.spread` in Y/Z plane. A value of `1` restricts particles to X/Z plane.
	**/
	@:native("Flatness")
	public var flatness:Single;

	/**		
		Each particle's initial direction range from `+spread` to `-spread` degrees. Applied to X/Z plane and Y/Z planes.
	**/
	@:native("Spread")
	public var spread:Single;

	/**		
		Unit vector specifying the particles' emission direction.
	**/
	@:native("Direction")
	public var direction:godot.Vector3;

	/**		
		If `true`, particles will not move on the z axis.
	**/
	@:native("FlagDisableZ")
	public var flagDisableZ:Bool;

	/**		
		If `true`, particles rotate around Y axis by `godot.CPUParticles.angle`.
	**/
	@:native("FlagRotateY")
	public var flagRotateY:Bool;

	/**		
		Align Y axis of particle with the direction of its velocity.
	**/
	@:native("FlagAlignY")
	public var flagAlignY:Bool;

	/**		
		The axis for the ring shaped emitter when using `godot.CPUParticles_EmissionShapeEnum.ring`.
	**/
	@:native("EmissionRingAxis")
	public var emissionRingAxis:godot.Vector3;

	/**		
		The height for the ring shaped emitter when using `godot.CPUParticles_EmissionShapeEnum.ring`.
	**/
	@:native("EmissionRingHeight")
	public var emissionRingHeight:Single;

	/**		
		The inner radius for the ring shaped emitter when using `godot.CPUParticles_EmissionShapeEnum.ring`.
	**/
	@:native("EmissionRingInnerRadius")
	public var emissionRingInnerRadius:Single;

	/**		
		The radius for the ring shaped emitter when using `godot.CPUParticles_EmissionShapeEnum.ring`.
	**/
	@:native("EmissionRingRadius")
	public var emissionRingRadius:Single;

	/**		
		Sets the `godot.Color`s to modulate particles by when using `godot.CPUParticles_EmissionShapeEnum.points` or `godot.CPUParticles_EmissionShapeEnum.directedPoints`.
	**/
	@:native("EmissionColors")
	public var emissionColors:cs.NativeArray<godot.Color>;

	/**		
		Sets the direction the particles will be emitted in when using `godot.CPUParticles_EmissionShapeEnum.directedPoints`.
	**/
	@:native("EmissionNormals")
	public var emissionNormals:cs.NativeArray<godot.Vector3>;

	/**		
		Sets the initial positions to spawn particles when using `godot.CPUParticles_EmissionShapeEnum.points` or `godot.CPUParticles_EmissionShapeEnum.directedPoints`.
	**/
	@:native("EmissionPoints")
	public var emissionPoints:cs.NativeArray<godot.Vector3>;

	/**		
		The rectangle's extents if `godot.CPUParticles.emissionShape` is set to `godot.CPUParticles_EmissionShapeEnum.box`.
	**/
	@:native("EmissionBoxExtents")
	public var emissionBoxExtents:godot.Vector3;

	/**		
		The sphere's radius if `godot.CPUParticles_EmissionShapeEnum` is set to `godot.CPUParticles_EmissionShapeEnum.sphere`.
	**/
	@:native("EmissionSphereRadius")
	public var emissionSphereRadius:Single;

	/**		
		Particles will be emitted inside this region. See `godot.CPUParticles_EmissionShapeEnum` for possible values.
	**/
	@:native("EmissionShape")
	public var emissionShape:godot.CPUParticles_EmissionShapeEnum;

	/**		
		The `godot.Mesh` used for each particle. If `null`, particles will be spheres.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	/**		
		Particle draw order. Uses `godot.CPUParticles_DrawOrderEnum` values.
	**/
	@:native("DrawOrder")
	public var drawOrder:godot.CPUParticles_DrawOrderEnum;

	/**		
		If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates.
	**/
	@:native("LocalCoords")
	public var localCoords:Bool;

	/**		
		If `true`, results in fractional delta calculation which has a smoother particles display effect.
	**/
	@:native("FractDelta")
	public var fractDelta:Bool;

	/**		
		The particle system's frame rate is fixed to a value. For instance, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the particle system itself.
	**/
	@:native("FixedFps")
	public var fixedFps:Int;

	/**		
		Particle lifetime randomness ratio.
	**/
	@:native("LifetimeRandomness")
	public var lifetimeRandomness:Single;

	/**		
		Emission lifetime randomness ratio.
	**/
	@:native("Randomness")
	public var randomness:Single;

	/**		
		How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.
	**/
	@:native("Explosiveness")
	public var explosiveness:Single;

	/**		
		Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.
	**/
	@:native("SpeedScale")
	public var speedScale:Single;

	/**		
		Particle system starts as if it had already run for this many seconds.
	**/
	@:native("Preprocess")
	public var preprocess:Single;

	/**		
		If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.
	**/
	@:native("OneShot")
	public var oneShot:Bool;

	/**		
		The amount of time each particle will exist (in seconds).
	**/
	@:native("Lifetime")
	public var lifetime:Single;

	/**		
		The number of particles emitted in one emission cycle (corresponding to the `godot.CPUParticles.lifetime`).
		
		Note: Changing `godot.CPUParticles.amount` will reset the particle emission, therefore removing all particles that were already emitted before changing `godot.CPUParticles.amount`.
	**/
	@:native("Amount")
	public var amount:Int;

	/**		
		If `true`, particles are being emitted.
	**/
	@:native("Emitting")
	public var emitting:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetEmitting")
	public function setEmitting(emitting:Bool):Void;

	@:native("SetAmount")
	public function setAmount(amount:Int):Void;

	@:native("SetLifetime")
	public function setLifetime(secs:Single):Void;

	@:native("SetOneShot")
	public function setOneShot(enable:Bool):Void;

	@:native("SetPreProcessTime")
	public function setPreProcessTime(secs:Single):Void;

	@:native("SetExplosivenessRatio")
	public function setExplosivenessRatio(ratio:Single):Void;

	@:native("SetRandomnessRatio")
	public function setRandomnessRatio(ratio:Single):Void;

	@:native("SetLifetimeRandomness")
	public function setLifetimeRandomness(random:Single):Void;

	@:native("SetUseLocalCoordinates")
	public function setUseLocalCoordinates(enable:Bool):Void;

	@:native("SetFixedFps")
	public function setFixedFps(fps:Int):Void;

	@:native("SetFractionalDelta")
	public function setFractionalDelta(enable:Bool):Void;

	@:native("SetSpeedScale")
	public function setSpeedScale(scale:Single):Void;

	@:native("IsEmitting")
	public function isEmitting():Bool;

	@:native("GetAmount")
	public function getAmount():Int;

	@:native("GetLifetime")
	public function getLifetime():Single;

	@:native("GetOneShot")
	public function getOneShot():Bool;

	@:native("GetPreProcessTime")
	public function getPreProcessTime():Single;

	@:native("GetExplosivenessRatio")
	public function getExplosivenessRatio():Single;

	@:native("GetRandomnessRatio")
	public function getRandomnessRatio():Single;

	@:native("GetLifetimeRandomness")
	public function getLifetimeRandomness():Single;

	@:native("GetUseLocalCoordinates")
	public function getUseLocalCoordinates():Bool;

	@:native("GetFixedFps")
	public function getFixedFps():Int;

	@:native("GetFractionalDelta")
	public function getFractionalDelta():Bool;

	@:native("GetSpeedScale")
	public function getSpeedScale():Single;

	@:native("SetDrawOrder")
	public function setDrawOrder(order:godot.CPUParticles_DrawOrderEnum):Void;

	@:native("GetDrawOrder")
	public function getDrawOrder():godot.CPUParticles_DrawOrderEnum;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	/**		
		Restarts the particle emitter.
	**/
	@:native("Restart")
	public function restart():Void;

	@:native("SetDirection")
	public function setDirection(direction:godot.Vector3):Void;

	@:native("GetDirection")
	public function getDirection():godot.Vector3;

	@:native("SetSpread")
	public function setSpread(degrees:Single):Void;

	@:native("GetSpread")
	public function getSpread():Single;

	@:native("SetFlatness")
	public function setFlatness(amount:Single):Void;

	@:native("GetFlatness")
	public function getFlatness():Single;

	/**		
		Sets the base value of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("SetParam")
	public function setParam(param:godot.CPUParticles_Parameter, value:Single):Void;

	/**		
		Returns the base value of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("GetParam")
	public function getParam(param:godot.CPUParticles_Parameter):Single;

	/**		
		Sets the randomness factor of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("SetParamRandomness")
	public function setParamRandomness(param:godot.CPUParticles_Parameter, randomness:Single):Void;

	/**		
		Returns the randomness factor of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("GetParamRandomness")
	public function getParamRandomness(param:godot.CPUParticles_Parameter):Single;

	/**		
		Sets the `godot.Curve` of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("SetParamCurve")
	public function setParamCurve(param:godot.CPUParticles_Parameter, curve:godot.Curve):Void;

	/**		
		Returns the `godot.Curve` of the parameter specified by `godot.CPUParticles_Parameter`.
	**/
	@:native("GetParamCurve")
	public function getParamCurve(param:godot.CPUParticles_Parameter):godot.Curve;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetColorRamp")
	public function setColorRamp(ramp:godot.Gradient):Void;

	@:native("GetColorRamp")
	public function getColorRamp():godot.Gradient;

	@:native("SetColorInitialRamp")
	public function setColorInitialRamp(ramp:godot.Gradient):Void;

	@:native("GetColorInitialRamp")
	public function getColorInitialRamp():godot.Gradient;

	/**		
		Enables or disables the given flag (see `godot.CPUParticles_Flags` for options).
	**/
	@:native("SetParticleFlag")
	public function setParticleFlag(flag:godot.CPUParticles_Flags, enable:Bool):Void;

	/**		
		Returns the enabled state of the given flag (see `godot.CPUParticles_Flags` for options).
	**/
	@:native("GetParticleFlag")
	public function getParticleFlag(flag:godot.CPUParticles_Flags):Bool;

	@:native("SetEmissionShape")
	public function setEmissionShape(shape:godot.CPUParticles_EmissionShapeEnum):Void;

	@:native("GetEmissionShape")
	public function getEmissionShape():godot.CPUParticles_EmissionShapeEnum;

	@:native("SetEmissionSphereRadius")
	public function setEmissionSphereRadius(radius:Single):Void;

	@:native("GetEmissionSphereRadius")
	public function getEmissionSphereRadius():Single;

	@:native("SetEmissionBoxExtents")
	public function setEmissionBoxExtents(extents:godot.Vector3):Void;

	@:native("GetEmissionBoxExtents")
	public function getEmissionBoxExtents():godot.Vector3;

	@:native("SetEmissionPoints")
	public function setEmissionPoints(array:HaxeArray<godot.Vector3>):Void;

	public extern inline function getEmissionPoints():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetEmissionPoints()", this));
	}

	@:native("SetEmissionNormals")
	public function setEmissionNormals(array:HaxeArray<godot.Vector3>):Void;

	public extern inline function getEmissionNormals():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetEmissionNormals()", this));
	}

	@:native("SetEmissionColors")
	public function setEmissionColors(array:HaxeArray<godot.Color>):Void;

	public extern inline function getEmissionColors():std.Array<godot.Color> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetEmissionColors()", this));
	}

	@:native("SetEmissionRingRadius")
	public function setEmissionRingRadius(radius:Single):Void;

	@:native("GetEmissionRingRadius")
	public function getEmissionRingRadius():Single;

	@:native("SetEmissionRingInnerRadius")
	public function setEmissionRingInnerRadius(offset:Single):Void;

	@:native("GetEmissionRingInnerRadius")
	public function getEmissionRingInnerRadius():Single;

	@:native("SetEmissionRingHeight")
	public function setEmissionRingHeight(height:Single):Void;

	@:native("GetEmissionRingHeight")
	public function getEmissionRingHeight():Single;

	@:native("SetEmissionRingAxis")
	public function setEmissionRingAxis(axis:godot.Vector3):Void;

	@:native("GetEmissionRingAxis")
	public function getEmissionRingAxis():godot.Vector3;

	@:native("GetGravity")
	public function getGravity():godot.Vector3;

	@:native("SetGravity")
	public function setGravity(accelVec:godot.Vector3):Void;

	/**		
		Sets this node's properties to match a given `godot.Particles` node with an assigned `godot.ParticlesMaterial`.
	**/
	@:native("ConvertFromParticles")
	public function convertFromParticles(particles:godot.Node):Void;
}
