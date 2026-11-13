shader_type sky;

void sky() {
	COLOR = abs(sin(EYEDIR * 0.75));
	COLOR.r = 1.;
}
