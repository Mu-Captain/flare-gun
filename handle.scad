$fn=20;   // For persion of polygons


difference(){
union(){
difference(){ // the period
translate([7.5,110,-34]){ // the period
    cube([20,8,8]);
}
translate([0,114,-30]){
rotate([0,90,0]){
  cylinder(r=3,h=30);
}}}
cube([35,110,3]);  //lower plate.
rotate([-15,0,0]){ // handle.
translate([8,31,-85]){
minkowski(){
  cube([19,41,110]);
  cylinder(r=2,h=1);
}}}
rotate([0,90,0]){ // triggerguard.
translate([0,67,9]){
minkowski(){
  cube([28,41,16]);
  cylinder(r=2,h=1);
}}}
translate([9,105,-15]){ // extra finger space.
rotate([0,90,0]){
  cylinder(r=15,h=17);
}}
rotate([0,90,0]){ // backstrap.
translate([1,2,8]){
minkowski(){
  cube([1,27,18]);
  cylinder(r=1,h=1);
}}}
}


translate([10,-7,-77]){ // clip notch
    cube([15,25,4.5]);
}


translate([7,104,-14.5]){ // extra finger hole
rotate([0,90,0]){
  cylinder(r=12.5,h=22);
}}
rotate([-15,0,0]){  // clip grove
translate([10,33,-100]){
minkowski(){
  cube([15,37,150]);
  cylinder(r=2,h=1);
}}}

hull(){   //  ramp path
translate([-1,2,2.5]){
difference(){   //ramp
translate([10,5,-3]){
rotate([45,0,0]){
    cube([17,5,5]);
}}
translate([9,0,2]){
    cube([20,30,5]);
}}}
translate([-1,20,2.5]){
difference(){   //ramp
translate([10,5,-3]){
rotate([45,0,0]){
    cube([17,5,5]);
}}
translate([9,0,2]){
    cube([20,30,5]);
}}}}

translate([-10,-10,-112]){  // trim handle top
  cube([100,100,15]);
}
translate([-10,-10,3]){  // trim handle bottom
  cube([100,100,15]);
}
translate([13,75,-25]){ // trigger grove
  cube([9,15,30]);
}
rotate([0,90,0]){ // triggerguard hole.
translate([3,78,-5]){
minkowski(){
  cube([22,27,50]);
  cylinder(r=2,h=1);
}}}

}