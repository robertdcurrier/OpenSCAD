// Diaphragm Test 


// 1mm
color([1,0,1])
difference() {
  translate([0,20,0]) cylinder(h=1, d=12.5,$fn=50);
  translate([0,20,-1]) cylinder(h=3, d=1,$fn=50);
}


// 2mm
color([1,0,0])
difference() {
  translate([0,0,0]) cylinder(h=1, d=12.5,$fn=50);
  translate([0,0,-1]) cylinder(h=3, d=2,$fn=50);
}

// 3mm
color([0,1,0])
difference() {
  translate([10,10,0]) cylinder(h=1, d=12.5,$fn=50);
  translate([10,10,-1]) cylinder(h=3, d=3,$fn=50);
}

// 4mm
color([0,0,1])
difference() {
  translate([20,20,0]) cylinder(h=1, d=12.5,$fn=50);
  translate([20,20,-1]) cylinder(h=4, d=4,$fn=50);
}

// 5mm
color([1,.5,1])
difference() {
  translate([30,30,0]) cylinder(h=1, d=12.5,$fn=50);
  translate([30,30,-1]) cylinder(h=4, d=5,$fn=50);
}