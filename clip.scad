$fn=17;   // For persion of polygons





union(){
difference(){
union(){ // brick
translate([10,0,-140]){  // clip base
minkowski(){
  cube([14,40,25]);
  cylinder(r=4,h=1);
}}

rotate([-15,0,0]){  // clip
translate([10,33,-120]){
minkowski(){
  cube([14,36,140]);
  cylinder(r=2,h=1);
}}}}


translate([0,0,4]){ // cut the top off
    cube([100,100,100]);
}
/*
rotate([-15,0,0]){  // clip hollow
translate([11,36,-160]){
minkowski(){
  cube([12,30,200]);
  cylinder(r=2,h=1);
}}}*/

translate([-5,59,-12]){ // cut front top off
  cube([50,40,20]);
}

translate([17,55,0]){ // bore
rotate([0,90,90]){
rotate([0,-15,0]){
    cylinder(25,r=9,7);
}}}

translate([-20,-2,-119]){  // release handle1
rotate([0,90,0]){
  cylinder(r=3,h=90);
}}
rotate([-15,0,0]){  // release handle2
translate([10,15,-150]){
  cube([14,15,40]);}}
/*
translate([17,-2,-140]){//remove bottom
  sphere(4);}
translate([17,34,-140]){//remove bottom2
  sphere(4);}*/
translate([13,33,-147]){//remove bottom2
  rotate([45,0,0]){cube(8);}}
translate([0,0,-3]){
difference(){    // setting up the top
rotate([-15,0,0]){  // clip hollow
translate([11,35,-160]){
minkowski(){
  cube([12,31,200]);
  cylinder(r=2,h=1);
}}}
translate([0,0,5]){ // cut the top off
    cube([100,100,100]);
}}}

translate([17,0,2]){  // plunger hole
rotate([-90,0,0]){
  cylinder(r=5,h=90);
}}
translate([12,0,-4]){ // hole for plunger
    cube([10,36,10]);
}

translate([17,60,-19]){  // rubberband hole2
rotate([-90,0,0]){
  cylinder(r=3,h=20);
}}
translate([17,0,-10]){  // rubberband hole
rotate([-90,0,0]){
  cylinder(r=3,h=90);
}}
translate([17,27,-160]){
rotate([-15,0,0]){  // rubberband track1
  cylinder(r=3,h=190);
}}
translate([17,-7,-160]){
rotate([-15,0,0]){  // rubberband track2
  cylinder(r=3,h=190);
}}
translate([30.5,0,-5]){ // cut the top off angle 1
rotate([0,-35,0]){
    cube([5,100,100]);
}}
translate([-2.5,0,-5]){ // cut the top off angle 2
rotate([0,35,0]){
    cube([5,100,100]);
}}
}


// the last union
translate([13,68,-16]){  // rubberband cutter fix 1
rotate([0,90,0]){
    cylinder(8,r=1,1);
}}
translate([13,32,-7]){  // rubberband cutter fix 2
rotate([0,90,0]){
    cylinder(8,r=1,1);
}}
translate([13,69,-13]){  // rubberband cutter fix 1
rotate([0,90,0]){
    cylinder(8,r=1,1);
}}
translate([13,-4,-139]){  // rubberband cutter fix bottom
rotate([0,90,0]){
    cylinder(8,r=1,1);
}}
translate([10,32.5,-4]){  // rubberband cutter fix 2
rotate([0,90,0]){
    cylinder(13,r=1,1);
}}
}

