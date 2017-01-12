$fn=20;   // For persion of polygons


difference(){
union(){
translate([23,79,2]){  // fix1
rotate([0,90,0]){
    cylinder(6,r=1,1);
}}
translate([23,76,2]){  // fix2
rotate([0,90,0]){
    cylinder(6,r=1,1);
}}

translate([18,77,3]){ // trigger
rotate([0,90,90]){
rotate([0,90,0]){
    cylinder(30,r=3,3);
}}
difference(){
translate([0,-.5,-25]){ // trigger
rotate([0,90,90]){
rotate([0,45,0]){
    cylinder(8,r=2,3);
}}}
translate([-9,-9,-40]){ // trim trigger
cube([20,20,10]);
}}}

difference(){  //plate.
cube([34,80,3]);
translate([7,21,-10]){   // handle hole
cube([20,53,20]);
}
translate([-4,-5,-6]){  // 1 notch
    cube([15,20,15]);
}
translate([24,-5,-6]){  // 2 notch
    cube([15,20,15]);
}
translate([-1,-1,-1]){  // trimming sides of plate
cube([4,200,6]);
}
translate([31,-1,-1]){  // trimming sides of plate
cube([4,200,6]);
}
hull(){ // flex on the neck
translate([0,12,4]){
rotate([0,90,0]){
    cylinder(34,r=3,3);
}}
translate([0,4,4]){ 
rotate([0,90,0]){
    cylinder(34,r=3,3);
}}}
translate([26,73,-1]){ // grove
rotate([0,90,90]){
rotate([0,0,0]){
    cylinder(90,r=3,3);
}}}
translate([26,73,10]){ // hole
rotate([0,90,90]){
rotate([0,90,0]){
    cylinder(20,r=3,3);
}}}
translate([26,83,10]){ // hole
rotate([0,90,90]){
rotate([0,90,0]){
    cylinder(20,r=3,3);
}}}
translate([-8,-4,-10]){  //trim 1
cube([20,20,20]);
}

translate([23,-4,-10]){  //trim 2
cube([20,20,20]);
}
}

translate([12,1,0]){  // ramp
rotate([0,90,0]){
    cylinder(11,r=2,2);
}}
}

/*
translate([18,77,10]){ // hole in trigger
rotate([0,90,90]){
rotate([0,90,0]){
    cylinder(60,r=1,1);
}}}
*/
}
