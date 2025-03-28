#version 460 core
layout (location = 0) in vec2 aVertexPositeon;
layout (location = 1) in vec2 aTexturePositeon;
layout (location = 2) in vec3 aColor;

out vec3 color;
out vec2 texturePositeon;

uniform mat4 modelMatrix;
uniform mat4 projectionMatrix;

void main()
{
    color = aColor;
    texturePositeon = aTexturePositeon;
    gl_Position = projectionMatrix * modelMatrix * vec4(aVertexPositeon, 0.0, 1.0);
}