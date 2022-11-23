include <MMlib/colors.scad>
$fn = 100;

motor_tube_length = 11;
motor_tube_thickness = 1/32;
motor_tube_diameter = 1/4;


module motor_tube() {
    color(WOOD_Balsa) {
        rotate([0,90,0]) {
            difference() {
                cylinder(r=motor_tube_diameter/2, h=motor_tube_length);
                translate([0,0,-0.5])      
                    cylinder(
                        r = motor_tube_diameter/2 - motor_tube_thickness, 
                        h=motor_tube_length + 1
                    );
            }
        }
    }
}

motor_stick();