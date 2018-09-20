
// Gimme Shelter Box
difference() {
    union() {
        // GSB Base
        cube([73,30,1.75]);
        
        // GSB Sides
        translate([2, 0, 1.75]) {
            color([1,0,0])
            cube([69,1.5,19]);
        }
        translate([2, 28.5, 1.75]) {
            color([0,0,1])
            cube([69,1.5,19]);
        }
       // GSB Rear
       translate([0, 0, 1.75]) {
             color([0,1,0])
             cube([2,30,19]);
       }
       
       // GSB Front
       translate([69, 1.5, 6.5]) {
             color([1,1,1])
             cube([2,27,14.25]);
       }
       
       // Left caliper hard point
       translate([-5,6,0]) {
           color([1,0,1])
           cube([5,24,2.5]);
       }
       
       // Right caliper hard point circle
       translate([73,30,0]) {
           color([0,1,1])
           cylinder(h=1.75, d=7, $fn=50);
       }
       
       // Right caliper hard point rectangle
       translate([73,0,0]) {
           color([1,1,0])
           cube([2,27,1.75]);
       }
       // GSB Top Supports
       translate([10, 1.5, 18.5]) {
             color([0,1,1])
             cube([2,27,2]);
       }
       
       translate([17.5, 1.5, 18.75]) {
             color([0,1,1])
             cube([2,27,2]);
       }
  
       translate([52.5, 1.5, 18.75]) {
             color([0,1,1])
             cube([2,27,2]);
       }
       translate([60, 1.5, 18.75]) {
             color([0,1,1])
             cube([2,27,2]);
       }
       translate([23, 1.5, 18.75]) {
             color([0,1,1])
             cube([2,27,2]);
       }
       // GSB Top
       translate([0,0,20.75]) {
        color([1,.5,.5])
        cube([71,30,2]);
       }
    }
    // Slide Well
    translate([39.5,14.5,-1]) cylinder(h=8, d=15,
    $fn=50);
    
    // Objective Hole
     // Slide Well
    translate([39.5,14.5,19]) cylinder(h=8, d=25.5,
    $fn=50);
}