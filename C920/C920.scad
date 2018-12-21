 difference() { 
   union() {
    //Base
        cube([95,33,1.5]);
    // Sides
        translate([0, 0, 1.5]) {
            color([1,0,0])
            cube([95,1.75,8]);
        }
        translate([0, 31.25, 1.5]) {
            color([1,0,0])
            cube([95,1.75,20]);
        }
        // Ends
    translate([-1.75, 0, 0]) {
            color([0,1,0])
            cube([1.75,33,22]);
        }
    translate([95, 0, 0]) {
            color([0,1,0])
            cube([1.75,33,22]);
        }
    }
    
    // Objective hole
    translate([47.5,15,-1]) cylinder_outer(8,6,50);
}
module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);
    }