// Pi camera
difference() {
    // Bottom 
    cube([90,55,5]);
    
    // camera lens hole
    translate([57,22.5,0]) {
        color([1,0,1]) cube([9,9,9]);
    }
    
     // Slot for Pi Camera ribbon cable
    translate([5, 17.5, -1]) {
        color([1,0,1])
        cube([3,20,8]);  
    }
    
    // camera mounting holes top
    translate([60.75,37,-1]) {cylinder(h=6, d=2,
    $fn=50);
    }
    translate([73,37,-1]) {cylinder(h=6, d=2,
    $fn=50);
    }
    // camera mounting holes bottom
    translate([60.75,16,-1]) {cylinder(h=6, d=2,
    $fn=50);
    }
    translate([73,16,-1]) {cylinder(h=6, d=2,
    $fn=50);
    }
    
    // Camera CPU indent
    translate([68,23,3]) {
    color([1,0,0]) cube([6,8,3]);
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
}