$fn=30;

gDepth = -1;
barrelLength = 20;
outsideBarrel = 0;




difference(){
union(){
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


translate([5,-15,-50]){ // zip path 1
rotate([45,0,0]){
cube([14,48,50]);
}}
translate([5,60,-50]){ // zip path 2
rotate([45,0,0]){
cube([14,48,50]);
}}


translate([-10,8,-5]){ // handle space
cube([18,26,32]);
}

translate([38,21,4]){ // rubber band notch 2
rotate([0,0,0]){
    cylinder(50,r=9,9);
}}

translate([26,10,4]){ // rubber band notch 3
rotate([0,0,0]){
    cylinder(60,r=9,9);
}}

translate([26,32,4]){ // rubber band notch 4
rotate([0,0,0]){
    cylinder(70,r=9,9);
}}
}

difference(){
translate([26,21,0]){ // barrel
rotate([0,0,0]){
    cylinder(barrelLength,r=7,7);
}}
difference(){  // tapper outside of barrel
translate([26,21,outsideBarrel]){
rotate([0,0,0]){
    cylinder(barrelLength,r=8,8);
}}
translate([26,21,(outsideBarrel-1)]){
rotate([0,0,0]){
    cylinder((barrelLength+1.1),r=6,7);
}}}
translate([31,26,(outsideBarrel-1)]){  // quarter notch.
rotate([0,0,0]){
    cylinder((barrelLength+1.1),r=9,2);
}}
translate([36,21,(outsideBarrel-1)]){  // quarter notch top.
rotate([0,0,0]){
    cylinder((barrelLength+1.1),r=9,2);
}}

}


}

translate([26,21,barrelLength]){ // shape it
    sphere(7);
}
translate([26,21,-5]){ // shape it
    cylinder((40),r=4);
}
}


