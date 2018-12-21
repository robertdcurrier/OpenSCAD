difference() {
  union() {
    cylinder(h=.75, d=14, $fn=50);    
    translate([0,0,.75]) {
      cylinder(h=2, d=11, $fn=50);
    }
  }
   translate([0,0,.5]) {
    cylinder(h=5, d=8, $fn=50);
  }
   translate([0,0,-2]) {
     cylinder(h=5.25, d=3, $fn=50);
   }     
}