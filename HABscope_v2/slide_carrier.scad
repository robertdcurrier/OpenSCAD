
// Slide carrier body w/joined side & end caps
difference() {
    union() {
        // Base plate
        cube([90,55,2]);
        
        // Slide Side Guides
        translate([24, 0, 2]) {
            color([1,0,0])
            cube([66,14.5,5]);
        }
        translate([24, 40.5, 2]) {
            color([0,0,1])
            cube([66,14.5,5]);
        }
       // Slide End Stop
       translate([0, 0, 2]) {
             color([0,1,0])
             cube([24,55,5]);
       }

    }
    // Hole for slide well
    translate([62,27.5,-1]) cylinder(h=4, r=7.0,
    $fn=50);
   
    // Guide holes in each corner
    translate([25,50,-1]) cylinder(h=12, d=5,
    $fn=50);
    translate([85,5,-1]) cylinder(h=12, d=5,
    $fn=50);
    translate([25,5,-1]) cylinder(h=12, d=5,
    $fn=50);
    translate([85,50,-1]) cylinder(h=12, d=5,
    $fn=50);
    
    // Slot for Pi Camera ribbon cable
    translate([5, 17.5, -1]) {
        color([1,0,0])
        cube([3,20,15]);  
    }
}