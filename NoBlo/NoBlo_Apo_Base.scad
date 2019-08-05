
// NoBlo -- Wind Mitigation Device
difference() {
    union() {
        // NoBlo Base
        cube([73,30,2]);
        
        // NoBlo Sides
        translate([2, 0, 1.75]) {
            color([1,0,0])
            cube([69,2,8]);
        }
        translate([2, 28, 1.75]) {
            color([0,0,1])
            cube([69,2,8]);
        }
       // NoBlo Rear
       translate([0, 0, 1.75]) {
             color([0,1,0])
             cube([2,30,8]);
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
       
       // Right caliper hard point rectangle
       translate([73,0,0]) {
           color([1,1,0])
           cube([2,27,2]);
       }
       
         // NoBlo Front
       translate([69, 2, 6]) {
             color([1,1,1])
             cube([2,26,3.75]);
       }
       
       // Door Slide Left
         translate([71, 0, 5.25]) {
             color([0,.75,.5])
             cube([1.5,1.25,4.5]);
       }
        translate([72.5, 0, 5.25]) {
             color([.6,.75,.5])
             cube([.5,2.25,4.5]);
       }
       
        // Door Slide Right
         translate([71, 28.5, 5.25]) {
             color([0,.75,.5])
             cube([1.5,1.25,4.5]);
       }
        translate([72.5, 27.5, 5.25]) {
             color([.6,.75,.5])
             cube([.5,2.25,4.5]);
       }
       
       // Peg Gussets
       translate([2,2,5.75]) {
           color([0,1,1])
           cube([4,4,4]);
       }
       translate([2,24,5.75]) {
           color([0,1,1])
           cube([4,4,4]);
       }
        translate([65,2,5.75]) {
           color([0,1,1])
           cube([4,4,4]);
       }
        translate([65,24,5.75]) {
           color([0,1,1])
           cube([4,4,4]);
       }
       // Top Peg nipples
       translate([4,4,10]) {
           color([0,0,0])
           cylinder_outer(1, .5, 50);
       }
        
       translate([67,4,10]) {
         color([0,0,0])
         cylinder_outer(1, .5, 50);
       }
        translate([67,26,10]) {
         color([0,0,0])
         cylinder_outer(1, .5, 50);
       }
        translate([4,26,10]) {
         color([0,0,0])
         cylinder_outer(1, .5, 50);
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