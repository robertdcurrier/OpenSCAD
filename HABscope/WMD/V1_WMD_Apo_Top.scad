
// WMD

module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);
    }
 
difference() {
       // GSB Top
       translate([0,0,0]) {
        color([1,.5,.5])
        cube([71,30,2]);
       }
    
    // Objective Hole
    translate([40,14.5,-2]) {
        cylinder_outer(5,10.5,100);
    }

 // Top Nipple Holes
       translate([4,4,1]) {
           color([0,0,0])
           cylinder_outer(1.5, .5, 50);
       }
        translate([67,4,1]) {
           color([0,0,0])
           cylinder_outer(1.5, .5, 50);
       }
        translate([67,26,1]) {
           color([0,0,0])
           cylinder_outer(1.5, .5, 50);
       }
       translate([4,26,1]) {
           color([0,0,0])
           cylinder_outer(1.5, .5, 50);
       }
   }
 // Optical tube
       difference() {
       translate([40,50,0]) {
           // outer wall
           cylinder_outer(20, 10.2, 100);
       }
        // inner tube
       translate([40,50,-1]) {
       color([1,0,0])
       cylinder_outer(25, 9.5, 100);
    }
   }