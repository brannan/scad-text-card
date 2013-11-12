use <Write.scad>
// http://curriculum.makerbot.com/daily_lessons/february/openscad_write.html
_height = 8;
_font = "orbitron.dxf";
_thickness = 4;
_line_space = _height * 1.15;
_lines = 2;

union() {

minkowski() {
	cube([90,51,1]);
	cylinder(r=3,h=1);
}

translate([.5 * _height, 51 - _height - .5 * _height, 0]){
	write("Joe Brannan", t=_thickness, h=_height,  font=_font); 
	translate([0, -_line_space, 0]){
		write("218 Sylvester Ave.", t=_thickness, h=6,  font=_font);
		translate([0, -_line_space, 0]) {
			write("St. Louis, MO", t=_thickness, h=6,  font=_font);
			translate([0, -_line_space, 0]) {
				write("314.630.8795", t=_thickness, h=6,  font=_font);
			}
		}
	}	
}

}