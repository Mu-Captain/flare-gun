$fn=20;

gDepth = -1;



union(){
translate([26.5,28,5.5]){// just a bump
rotate([90,0,0]){
    cylinder(14,r=2);
}}
difference(){
rotate([0,0,0]){
translate([-12,0,0]){
cube([60,42,16]);  // Cap
}}
translate([-3,3,4]){
cube([48,36,50]);  // gut it.
}
translate([-20,-3,-4]){
cube([14,48,50]);  // trim it.
}


translate([26,21,-10]){ // barrel hole
rotate([0,0,0]){
    cylinder(50,r=8,8);
}}

translate([5,-15,-50]){ // zip path 1
rotate([45,0,0]){
cube([14,48,50]);
}}
translate([5,60,-50]){ // zip path 2
rotate([45,0,0]){
cube([14,48,50]);
}}

translate([-14,8,-5]){ // handle space
cube([18,26,32]);
}

}

translate([0.5,0,0]){  // move this.
difference(){
translate([26,14,0]){ // ramp
    cube([8,14,14]);
}
translate([12,9,5]){
rotate([0,45,0]){
    cube([8,24,26]);
}}
}}

translate([36,42,0]){  // move this.
rotate([0,0,180]){
difference(){
translate([26,14,0]){ // ramp 2
    cube([10,14,14]);
}
translate([12,9,5]){
rotate([0,45,0]){
    cube([10,28,26]);
}}
}}}

}



