$fn=10;   // For persion of polygons


union(){
difference(){
translate([0,0,29]){
cube([34,110,3]);  //upper plate.
}
translate([-1,-1,28]){
cube([4,25,6]);
}
translate([-1,86,28]){
cube([4,25,6]);
}
translate([31,-1,28]){
cube([4,25,6]);
}
translate([31,86,28]){
cube([4,25,6]);
}
translate([17,110,26]){
    cylinder(r=4,h=10);
}}
translate([17,34,35]){
    sphere(4);
}
translate([17,58,35]){
    sphere(4);
}
translate([17,80,35]){
    sphere(4);
}}