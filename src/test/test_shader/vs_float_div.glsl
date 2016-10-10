attribute vec3 positions;

uniform vec2 a;
uniform vec2 b;
uniform float ONE;

varying vec4 vColor;

#pragma glslify: div_fp64 = require(../../layers/shaderlib/fp64/div-fp64, ONE=ONE)

void main(void) {

  gl_Position = vec4(positions, 1.0);
  vec2 result = div_fp64(a, b);
  vColor = vec4(result.x, result.y, 0.0, 1.0);
}