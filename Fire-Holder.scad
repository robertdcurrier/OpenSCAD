// Base plate w/guide rods
difference() {
    union() {
        // Bottom 
        cube([80,40,2]);
    
        // Sides
        translate([0, 0, 2]) {
            color([1,0,0])
            cube([80,2,30]);
        }
         translate([0, 38, 2]) {
            color([1,0,0])
            cube([80,2,30]);
        }
        
        // Top
       translate([0,0,30]) {
       cube([80, 40, 2]);
       }
       
        // Bracket Holders
        translate([15,30,30]) {
            color([0,0,1])
            cube([50,3,4]);
        }
        translate([15,20,30]) {
            color([0,0,1])
            cube([50,3,4]);
        }
        
       // Ends
       translate([-2, 0, 0]) {
           color([0,1,0])
           cube([2,40,32]);
       }
       translate([80, 0, 0]) {
           color([0,1,0])
           cube([2,40,32]);
       }
    }
}