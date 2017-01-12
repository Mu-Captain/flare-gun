$fn=70;   // For persion of polygons

thickness = 5;






translate([-15,15,-26]){// back to origin.
difference(){       // ejecting arm
union(){
translate([15,-15,26]){
    rotate([0,0,90]){
    cube([thickness,5,4],0);
}}
translate([15,-40,26]){
    cube([thickness,30,4],0);
}}
translate([18,-36,20]){  // knoch 1
    cube([6,2,40],0);
}
translate([18,-22,20]){  // knoch 2
    cube([6,2,40],0);
}
translate([20,-14,24]){
    rotate([0,0,45]){
    cube([thickness+6,6,9],0);
}}
translate([13,-50,-40]){
    rotate([0,0,45]){
    cube([thickness+6,8,90],0);
}}
translate([10,-14,24]){
    rotate([0,0,45]){
    cube([thickness+6,6,9],0);
}}}}