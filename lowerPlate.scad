$fn=50;   // For persion of polygons



difference(){
cube([34,110,3]);  //lower plate.
translate([6.5,32,-10]){
cube([21,37,20]);
}
difference(){
translate([17,54,2]){ // bore
rotate([0,90,90]){
rotate([0,-15,0]){
    cylinder(34,r=8,9);
}}}
translate([0,71,0]){
difference(){
cube([34,8,3]);  //ramp.
translate([26,-5,-1]){ // grove
rotate([0,90,90]){
rotate([0,0,0]){
    cylinder(50,r=3,3);
}}}
translate([17,0,5]){
    sphere(6);}
translate([-2,0,0]){
rotate([45,0,0]){
cube([40,12,3]);
}}}}
}
translate([26,73,-1]){ // grove
rotate([0,90,90]){
rotate([0,0,0]){
    cylinder(50,r=3,3);
}}}
translate([23,99,-10]){ // notch
cube([6,40,30]);
}
translate([-1,-1,-1]){
cube([4,25,6]);
}
translate([-1,86,-1]){
cube([4,25,6]);
}
translate([31,-1,-1]){
cube([4,25,6]);
}
translate([31,86,-1]){
cube([4,25,6]);
}

translate([-3,27,3]){  // firingpin ramp
difference(){   //ramp
translate([9,5,-3]){
rotate([45,0,0]){
    cube([22,5,5]);
}}
translate([8,0,2]){
    cube([25,30,5]);
}}}

translate([0,0,0]){ // move this
union(){   // makes it nice
translate([9,-5,-1]){  // pin catch
cube([17,14,6]); // [16,x,6]
}
translate([35,4,0]){
rotate([0,180,0]){
difference(){   //ramp
translate([9,5,-3]){
rotate([45,0,0]){
    cube([17,5,5]);
}}
translate([8,0,2]){
    cube([20,30,5]);
}}}}}}

}
/*
translate([0,78,0]){
difference(){
cube([34,8,3]);  //ramp.
translate([26,-5,-1]){ // grove
rotate([0,90,90]){
rotate([0,0,0]){
    cylinder(50,r=3,3);
}}}
translate([-2,0,0]){
rotate([45,0,0]){
cube([40,12,3]);
}}}}*/
