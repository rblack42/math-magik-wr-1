//##########################################
// fuselage.scad
// (c) 2021 - Roie R. Black
//******************************************
include <fuselage.data>

use <motor-tube/motor-tube.scad>
use <thrust-bearing/thrust-bearing.scad>
use <prop/prop.scad>

module fuselage() {
  //adjust motor stick to fit bearing
	translate([0,0,0]) motor_tube();
	translate([-0.25,0.25+1/8,0])
        rotate([90,0,0])
    thrust_bearing();
    translate([0,1/16+1/16,-1/32]) 
        cube([1/4,1/16,1/16]);
    translate([-0.25-1/16,0.25 +1/8,0])
        prop();
}


//----------------------------------------------
// debug display
fuselage();
