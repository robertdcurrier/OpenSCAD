 union() {
        // GSB Door
        cube([12,25,1.25]);
     
        // Door Handle
        translate([0,0,1.25]) {
            color([0,1,0])
            cube([2,25,8]);
        }
 }