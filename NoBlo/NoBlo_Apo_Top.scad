
// WMD

module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);
    }
 
difference() {
       // NoBlo Top
       translate([0,0,0]) {
        color([1,.5,.5])
        cube([71,30,3]);
       }
    
    // Objective Hole
    translate([40,14.5,-2]) {
        cylinder_outer(8,10,100);
    }

 // Top Nipple Holes
       translate([4,4,-2]) {
           color([0,0,0])
           cylinder_outer(3.5, .95, 50);
       }
        translate([67,4,-2]) {
           color([0,0,0])
           cylinder_outer(3.5, .95, 50);
       }
        translate([67,26,-2]) {
           color([0,0,0])
           cylinder_outer(3.5, .95, 50);
       }
       translate([4,26,-2]) {
           color([0,0,0])
           cylinder_outer(3.5, .95, 50);
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
    