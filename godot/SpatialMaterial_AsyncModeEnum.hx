// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.AsyncModeEnum")
@:csNative
extern enum SpatialMaterial_AsyncModeEnum {
	/**		
		The real conditioned shader needed on each situation will be sent for background compilation. In the meantime, a very complex shader that adapts to every situation will be used ("ubershader"). This ubershader is much slower to render, but will keep the game running without stalling to compile. Once shader compilation is done, the ubershader is replaced by the traditional optimized shader.
	**/
	Visible;

	/**		
		Anything with this material applied won't be rendered while this material's shader is being compiled.
		
		This is useful for optimization, in cases where the visuals won't suffer from having certain non-essential elements missing during the short time their shaders are being compiled.
	**/
	Hidden;
}
