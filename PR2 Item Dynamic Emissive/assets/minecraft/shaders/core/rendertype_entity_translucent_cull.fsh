#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
	
	// If alpha is below 1/255 then discard, previous : if alpha is below 25/255 then discard
	// I did it so that
	// It will not disturb outside of my use case so dont worry - KelloVerra
	
    if (color.a < 0.00392156862) {
        discard;
    }
	if (color.a >= 0.99215686274 && color.a < 1) {
		color = texture(Sampler0, texCoord0) * ColorModulator;
	}
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
