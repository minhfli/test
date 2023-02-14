#version 460 core

layout (location = 0) in vec3 a_pos;
layout (location = 1) in vec4 a_color;
layout (location = 2) in vec2 a_tex_coord;
layout (location = 3) in int a_texture;

out vec4 v_color;
out vec2 v_tex_coord;
out int v_texture;

uniform mat4 CamMatrix;
//uniform mat4 transform;

void main(){
    //gl_Position = proj * view * model * vec4(a_pos,1);
    
    gl_Position = CamMatrix * vec4(a_pos,1);
    //gl_Position = vec4(a_pos,1);
    
    v_color = a_color;
    v_tex_coord = a_tex_coord;
    v_texture=a_texture;
}