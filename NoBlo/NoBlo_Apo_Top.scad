
// NoBlo

module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);
    }
 
difference() {
       // NoBlo Top
       translate([0,0,0]) {
        color([1,.5,.5])
        cube([76,30,3]);
       }
    
    // Objective Hole
    translate([40,14.5,-2]) {
        cylinder_outer(8,10,100);
    }
    
    // Door Hole
    translate([71, 2.25, -2]) {
      cube([2,25.75,6]);
    }
    
    // Guide Cubes
    translate([0,0,-2]) {
        cube([2,2,12]);     
      }
      translate([0,28,-2]) {
        cube([2,2,12]);     
      }
 }
   
 // Optical tube
   difference() {
   // outer wall
   translate([40, 14.5, 3]) {
       color([0,0,1])
       cylinder_outer(18,12,100);
    }
    //inner wall
    translate([40,14.5,2]) {
       cylinder_outer(25,10,100);
    }
}
    