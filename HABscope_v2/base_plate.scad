// Base plate w/guide rods
difference() {
    // Bottom 
        cube([90,55,2]);
    
    // Hole for lighting wiring
    translate([62.5, 28, -1]) {
        color([1,1,1])
        cylinder(h=13, d=8,
        $fn=50);  
    }
    // Slot for Pi Camera ribbon cable
    translate([5, 17.5, -1]) {
        color([1,0,0])
        cube([3,20,5]);  
    }
 }

// Guide rods in each corner
  translate([25,50,2]) cylinder(h=55, d=4,
    $fn=50);
  translate([85,5,2]) cylinder(h=55, d=4,
    $fn=50);
  translate([25,5,2]) cylinder(h=55, d=4,
    $fn=50);
  translate([85,50,2]) cylinder(h=55, d=4,
    $fn=50);
