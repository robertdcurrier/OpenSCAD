// Eyepiece mount
union() {
 // base and hole
    translate([0,0,0]) {
        difference() {
            cube([60,47, 2]);
            translate([30,23.5,-2]) 
            cylinder(h=5, d=32, $fn=100);
        }
    }
// Eyepiece tube
difference() {
    translate([30,23.5,2]) {
        cylinder(h=40, d1=37, d2=35, $fn=100);
    }
    translate([30,23.5,-1]) {
        color([1,0,0])
        cylinder(h=50, d1=32, d2=30, $fn=100);
    }
  }
}