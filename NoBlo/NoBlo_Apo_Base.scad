
// NoBlo -- Wind Mitigation Device
difference() {
    union() {
        // NoBlo Base
        cube([73,30,2]);
        
        // NoBlo Sides
        translate([2, 0, 1.75]) {
            color([1,0,0])
            cube([71,2,8]);
        }
        translate([2, 28, 1.75]) {
            color([0,0,1])
            cube([71,2,8]);
        }
       // NoBlo Rear
       translate([0, 0, 1.75]) {
             color([0,1,0])
             cube([2,30,8]);
       }
      
      // Guide Cubes
       translate([0,0,9.75]) {
            color([0,0,0])
            cube([2,2,2]);     
      }
      translate([0,28,9.75]) {
            color([0,0,0])
            cube([2,2,2]);     
      }
          
       // Left caliper hard point
       translate([-5,6,0]) {
           color([1,0,1])
           cube([5,24,2.5]);
       }
       
       // Right caliper hard point circle
       translate([73,30,0]) {
           color([0,1,1])
           cylinder(h=2, d=7, $fn=50);
       }
       
       // Right caliper hard point rectangle extension
       translate([73,0,0]) {
           color([0,1,0])
           cube([2,27,2]);
       }
   }
    // Slide Well
    translate([40,15,-1]) cylinder_outer(8,7.5,100);
    // Objective Hole
    translate([40,15,24]) cylinder_outer(5,9,100);
}

module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);
    }