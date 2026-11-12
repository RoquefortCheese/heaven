shader_type sky;

void sky() {
	COLOR = sin(abs(EYEDIR));
	COLOR.r = 1.;
}
