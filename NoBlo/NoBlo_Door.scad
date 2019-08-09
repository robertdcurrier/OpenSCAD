 union() {
        // GSB Door
        cube([12,24,1.75]);
     
        // Door Handle
        translate([0,0,1.75]) {
            color([0,1,0])
            cube([2,24,8]);
        }
 }