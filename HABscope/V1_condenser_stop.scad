// Base plate
union() {
    cube([18.65, 35.2,3]);
    translate([8.65,0,3]) {
        color([1,0,0])
        cube([10,35.2,8.65]);
    }
}