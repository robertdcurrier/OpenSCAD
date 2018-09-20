// Pi camera
difference() {
    // Bottom 
    cube([90,55,3]);
    
    // camera lens top hole
    translate([62,27.5,1]) {
        color([1,0,0]) cylinder(h=3,r=3,
        $fn=50);
    }
    
     // camera lens bottom hole
    translate([62,27.5,0]) {
        color([0,1,0]) cylinder(h=1,r=2.5,
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
 }