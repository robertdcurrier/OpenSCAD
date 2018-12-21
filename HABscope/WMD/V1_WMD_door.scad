 union() {
        // GSB Door
        cube([30,27,1]);
     
        // Door Stop
        translate([28,2,1]) {
            color([1,0,0])
            cube([1,23,2]);
        }
        
        // Door Handle
        translate([0,0,1]) {
            color([0,1,0])
            cube([2,27,4]);
        }
 }