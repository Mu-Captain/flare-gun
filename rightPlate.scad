$fn=10;

/*
translate([-34,0,40]){
cube([43,110,3]);
}}
translate([35,22,26]){
cube([10,65,4]);
}
translate([35,22,-5]){
cube([10,65,4]);
}
*/




union(){
difference(){
rotate([0,90,0]){
translate([-34,0,-9]){
cube([43,110,3]);  //right plate.
}}
translate([-12,22,20]){  //charging handle
cube([10,65,11]);
}
translate([-12,22,-5]){  // bottom slot
cube([10,65,4]);
}
translate([-12,110,14]){
rotate([90,90,90]){
    cylinder(r=4,h=10);
}}}
translate([-12,34,14]){
    sphere(4);
}
translate([-12,58,14]){
    sphere(4);
}
translate([-12,80,14]){
    sphere(4);
}}
