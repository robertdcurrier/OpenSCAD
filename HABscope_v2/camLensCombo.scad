// Pi camera
difference() {
    // Bottom 
    cube([90,55,8]);
    
    // camera 
    translate([57,22.5,2.3]) {
        color([1,0,1]) cube([11,9,6]);
    }
    
    // camera lens top hole
    translate([62.5,27,.5]) {
      color([1,0,0]) cylinder(h=2,d=5.5,
      $fn=50);
    }
    
     // camera lens bottom hole
    translate([62.5,27,0]) {
       color([0,1,0]) cylinder(h=1,d=2,
       $fn=50);
    }
   
     // Slot for Pi Camera ribbon cable
    translate([5, 17.5, -1]) {
        color([1,0,1])
        cube([3,20,12]);  
    }
    
    // camera mounting holes top
    translate([61.75,37,-1]) {cylinder(h=9, d=2,
    $fn=50);
    }
    translate([74.5,37,-1]) {cylinder(h=9, d=2,
    $fn=50);
    }
    // camera mounting holes bottom
    translate([61.75,16,-1]) {cylinder(h=9, d=2,
    $fn=50);
    }
    translate([74.5,16,-1]) {cylinder(h=9, d=2,
    $fn=50);
    }
    
    // Camera CPU indent
    translate([68,18,6]) {
    color([1,0,0]) cube([8,17.5,3]);
    }
    
    // Guide holes in each corner
    translate([25,50,-1]) cylinder(h=9, d=5,
    $fn=50);
    translate([85,5,-1]) cylinder(h=9, d=5,
    $fn=50);
    translate([25,5,-1]) cylinder(h=9, d=5,
    $fn=50);
    translate([85,50,-1]) cylinder(h=9, d=5,
    $fn=50); 
}