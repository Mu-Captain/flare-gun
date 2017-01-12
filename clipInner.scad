$fn=10;   // For persion of polygons


union(){    // the brick.
difference(){    // setting up the top
rotate([-15,0,0]){  // clip base
translate([11.5,35,-50]){
minkowski(){
  cube([11,30,80]);
  cylinder(r=2,h=1);
}}}

translate([2.5,6,0]){
difference(){
rotate([-15,0,0]){  // clip hollow
translate([11.5,35,-43]){
minkowski(){
  cube([6,19,50]);
  cylinder(r=2,h=1);
}}}

translate([0,0,0]){ // cut the top off
    cube([100,100,50]);
}
}}

translate([0,0,0]){ // cut the top off
    cube([100,100,50]);
}
translate([0,0,-100]){ // cut the bottom off
    cube([100,100,50]);
}
translate([17,25,-160]){
rotate([-15,0,0]){  // rubberband track1
  cylinder(r=3,h=190);
}}
translate([17,-7,-160]){
rotate([-15,0,0]){  // rubberband track2
  cylinder(r=3,h=190);
}}}

difference(){
translate([17,37,0]){  // cork
rotate([-90,0,0]){
  cylinder(r=7,h=30);
}}

translate([2.5,6,0]){
difference(){
rotate([-15,0,0]){  // clip hollow
translate([11.5,35,-43]){
minkowski(){
  cube([6,20,50]);
  cylinder(r=2,h=1);
}}}

translate([0,0,0]){ // cut the top off
    cube([100,100,50]);
}
}}
translate([17,25,-160]){
rotate([-15,0,0]){  // rubberband track1
  cylinder(r=3,h=190);
}}
translate([17,-7,-160]){
rotate([-15,0,0]){  // rubberband track2
  cylinder(r=3,h=190);
}}}

translate([17,31,-46]){ //rubberband handle 1
    sphere(4);
}
translate([17,48,-46]){ //rubberband handle 2
    sphere(4);
}
}// the end of the union... so sad.