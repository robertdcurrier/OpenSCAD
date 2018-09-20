// LED and power connector
difference() {
    union() {
        // Bottom 
        cube([90,55,2]);
        
        // Edges
        translate([1, 0, 2]) {
            color([1,0,0])
            cube([88,1,12]);
        }
        translate([1, 54, 2]) {
            color([0,0,1])
            cube([88,1,12]);
        }
        // Ends 
        translate([0, 0, 2]) {
            color([0,1,0])
            cube([1,55,12]);
        }
        translate([89, 0, 2]) {
            color([0,1,0])
            cube([1,55,12]);
        }
        // Optical tunnel exterior
        translate([62, 27.5, 2]) {
            color([0,1,1])
            cylinder(h=12, d=15,
            $fn=50);
        }
    } // End Union
    
    // Optical tunnel interior
    translate([62, 27.5, 1.9]) {
        color([1,0,1])
        cylinder(h=13, d=13,
        $fn=50);  
     }
    
     // Diaphragm opening
    translate([62, 27.5, -1]) {
        color([1,0,1])
        cylinder(h=13, d=5,
        $fn=50);  
    }
    // Guide holes in each corner
    translate([25,50,-1]) cylinder(h=6, d=5,
    $fn=50);
    translate([85,5,-1]) cylinder(h=6, d=5,
    $fn=50);
    translate([25,5,-1]) cylinder(h=6, d=5,
    $fn=50);
    translate([85,50,-1]) cylinder(h=6, d=5,
    $fn=50);
    
    // Slot for Pi Camera ribbon cable
    translate([5, 17.5, -1]) {
        color([1,0,0])
        cube([3,20,5]);  
    }
} // End Difference
