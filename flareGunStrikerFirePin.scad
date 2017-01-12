$fn=70;   // For persion of polygons


union(){
difference(){
union(){      // striker fire pin
translate([-4,-46,12]){
rotate([90,90,90]){ 
minkowski(){
    cube([16,5,8]);
    cylinder(r=2,h=1);
}}}
rotate([0,90,90]){ // pin hole cylinder
translate([-10,0,-40]){
    cylinder(36,r=2,2);
}}
}
translate([-10,-55,-16]){ // cut the tip off the notch
    cube([20,20,10]);
}
hull(){
rotate([90,90,90]){ // rubberband hole
translate([-10,-45,-20]){
    cylinder(40,r=2,2);
}}
rotate([90,90,90]){ // rubberband hole
translate([-10,-42,-20]){
    cylinder(40,r=2,2);
}}}


translate([-10,-43,-9]){ // cut a notch
    cube([20,20,10]);
}
translate([-10,-68,-10]){ // cut the back off
    cube([20,20,30]);
}

translate([-8,-50,-19]){   // make the ramp
rotate([45,0,0]){
    cube([16,12,12]);
}}
}
translate([-4,-43,-6]){  // catch
rotate([45,0,0]){
    cube([9,1,1]);
}}
}