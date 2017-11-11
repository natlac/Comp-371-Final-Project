#version 330 core
  
layout (location = 0) in vec3 position;
layout (location = 2) in vec3 color;
out vec3 colors;

uniform mat4 mvp_matrix;

void main()
{
    gl_Position =  mvp_matrix * vec4(position.x, position.y, position.z, 1.0);
    float vertex_color = position.y / 10.0f;
    if (position.y < 0) {
	colors = vec3(0, 0, -vertex_color);
    } else {
	colors = vec3(vertex_color, vertex_color, vertex_color);
    }
}

