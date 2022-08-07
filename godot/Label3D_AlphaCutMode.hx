// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Label3D.AlphaCutMode")
@:csNative
extern enum Label3D_AlphaCutMode {
	/**		
		This mode performs standard alpha blending. It can display translucent areas, but transparency sorting issues may be visible when multiple transparent materials are overlapping.
	**/
	Disabled;

	/**		
		This mode only allows fully transparent or fully opaque pixels. This mode is also known as alpha testing or 1-bit transparency.
		
		Note: This mode might have issues with anti-aliased fonts and outlines, try adjusting `godot.Label3D.alphaScissorThreshold` or using SDF font.
		
		Note: When using text with overlapping glyphs (e.g., cursive scripts), this mode might have transparency sorting issues between the main text and the outline.
	**/
	Discard;

	/**		
		This mode draws fully opaque pixels in the depth prepass. This is slower than `godot.Label3D_AlphaCutMode.disabled` or `godot.Label3D_AlphaCutMode.discard`, but it allows displaying translucent areas and smooth edges while using proper sorting.
		
		Note: When using text with overlapping glyphs (e.g., cursive scripts), this mode might have transparency sorting issues between the main text and the outline.
	**/
	OpaquePrepass;
}
