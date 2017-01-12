$fn=20;







translate([0,0,0]){
union(){            //left plate.
difference(){
rotate([0,90,0]){
translate([-34,0,40]){
cube([43,110,3]);
}}
translate([35,22,26]){
cube([10,65,4]);
}
translate([35,22,-5]){
cube([10,65,4]);
}
translate([39,21,7]){//ejecting hole no catch
rotate([0,0,45]){
cube([6,48,20]);
}}
translate([37,24,2]){//ejecting hole ramp
rotate([0,-45,0]){
cube([30,48,5]);
}}
translate([37,24,7]){//ejecting hole
cube([30,47,20]);
}}
translate([32,106,5]){ // hook
rotate([0,90,0]){
    cylinder(9,r=2,2);
}}
difference(){
translate([30,40,1]){
difference(){
translate([-10,32,-2]){  // move barrel
    cube([22,38,19.5]); // barrel
}
translate([-1,0,6]){ // ramp
    rotate([15,0,0]){
    cube([29,50,10]);
}}
translate([-2,0,2]){   // cylinder
hull(){
rotate([0,90,90]){
translate([-11,2,28]){
    cylinder(90,r=7,7);
}}
rotate([0,90,90]){
translate([-31,29,28]){
    cylinder(90,r=7,7);
}}}}}}
translate([26,50,4]){ // bore
rotate([0,90,90]){
rotate([0,-15,0]){
    cylinder(38,r=7,8);
}}}

hull(){
translate([26,33,-40]){  // cut away from barrel too another notch out
rotate([0,45,90]){
    cylinder(90,r=6,6);
}}
translate([20,33,-40]){  // cut away from barrel too another notch out
rotate([0,45,90]){
    cylinder(90,r=6,6);
}}
}


hull(){
translate([27,28,-40]){  // cut away from barrel
rotate([0,45,90]){
    cylinder(90,r=8,8);
}}
translate([27,18,-40]){  // cut away from barrel
rotate([0,45,90]){
    cylinder(90,r=8,8);
}}
translate([10,28,-40]){  // cut away from barrel part 2
rotate([0,45,90]){
    cylinder(90,r=8,8);
}}}
translate([14,65,7.5]){  // clean up bore
cube([10,10,10]);
}
translate([24,100,0]){  // clean up hook
rotate([0,45,0]){
cube([20,30,30]);
}}
translate([36,55,25]){ // ejecting arm hole
rotate([0,145,0]){ 
    cube([17,30,6]);
}}
}}}
