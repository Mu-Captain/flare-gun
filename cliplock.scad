$fn=20;   // For persion of polygons

difference(){
union(){
rotate([105,0,0]){
translate([0,6,115]){
translate([6,-2,-119]){  // release handle1
rotate([0,90,0]){
  cylinder(r=3,h=22);
}}
rotate([-15,0,0]){  // release handle2
translate([10,24,-130]){
  cube([14,4,50]);}}

translate([11,4,-90.5]){ // cut the top off
    cube([12,5,4]);
}
}}
}  // union

translate([0,-15,-1]){  // notch
rotate([0,90,0]){
  cylinder(r=3,h=35);
}}

}