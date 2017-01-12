$fn=13;   // For persion of polygons


worldT = -23;
worldR = 180;
length = 67;

// See where things are
rotate([0,worldR,0]){
translate([0,0,worldT]){

/*

    
    
    
*/

}}





    


union(){
    /*
translate([-7,57,5]){  // apply pressure to shell.
rotate([0,90,0]){
    cylinder(r=2,h=14);
}}*/
translate([10,30,0]){  // shaft for charging handle.
cube([19,14,4]);
}
translate([29,44,5]){  // charging handle
sphere(5);
}

translate([-13,10,13]){  //rubberband holder1
    cylinder(r=2,h=14);
}
translate([-13,25,13]){  //rubberband holder2
    cylinder(r=2,h=14);
}
    
difference(){
rotate([0,worldR,0]){
translate([0,0,worldT]){
difference(){   // internal slide
translate([13,0,21]){     //brick
rotate([0,90,90]){ 
minkowski(){
    cube([23,24,length],0);
    cylinder(r=2,h=1);
}}}
rotate([0,90,90]){ // main cylinder
translate([-10,-1.5,28]){
    cylinder(50,r=7.5,7.5);
}}
hull(){   // clean loading and ejecting
translate([-6,30,-5]){
    cube([14,70,16]);
}
translate([0,30,-4]){
    cube([17,70,21],0);
}}

translate([1.5,56,12]){  // extra room for loading
sphere(8);
}

translate([-3.5,30,5]){  // extra room for easier loading
sphere(3);
}
translate([6.5,30,5]){  // extra room for easier loading
sphere(3);
}
hull(){
translate([10,50,0]){  //clipchop1
rotate(a=90, v=[1,0,0]){
    cylinder(r=3,h=60);
}}

translate([10,50,-5]){  //clipchop1
rotate(a=90, v=[1,0,0]){
    cylinder(r=3,h=60);
}}}

hull(){
translate([-7,90,0]){  //clipchop2
rotate(a=90, v=[1,0,0]){
    cylinder(r=3,h=100);
}}
translate([-7,90,-5]){  //clipchop2
rotate(a=90, v=[1,0,0]){
    cylinder(r=3,h=100);
}}}

translate([3,60,12]){ //ramp
rotate([15,0,0]){
cube([19,14,4]);
}}

translate([9,27.5,-5]){// Fix flotting block
    cube([8,8,8]);
}
translate([0,-74,-5]){  //rear hole
translate([-7,30,-3]){
    cube([17,50,35]);
}}
translate([22,7,26]){ // ejecting arm hole
rotate([0,145,0]){ 
    cube([19,52,4]);
}}
rotate([0,90,90]){ // pin hole cylinder
translate([-10,-1.5,0]){
    cylinder(90,r=3,3);
}}
translate([18,10,-4]){  //rubberband path1
    cylinder(r=6,h=30);
}
translate([18,25,-4]){  //rubberband path2
    cylinder(r=6,h=30);
}
translate([-15,10,26]){  //rubberband path3
rotate(a=90, v=[0,1,0]){
    cylinder(r=6,h=30);
}}
translate([-15,25,26]){  //rubberband path4
rotate(a=90, v=[0,1,0]){
    cylinder(r=6,h=30);
}}
translate([-15,21,13]){// Fix 1
    cube([6,8,3]);
}
translate([-15,6,13]){
    cube([6,8,3]);
}
translate([-15,6,15]){// Fix 2
    cube([6,2,15]);
}
translate([-15,12,15]){
    cube([6,2,15]);
}
translate([-15,21,15]){
    cube([6,2,15]);
}
translate([-15,27,15]){
    cube([6,2,15]);
}
translate([5,6,-1]){// clean surface1
    cube([15,8,5]);
}
translate([5,21,-1]){// clean surface2
    cube([15,10,5]);
}
translate([1,85,25]){  //rubberband path7
rotate(a=90, v=[1,0,0]){
    cylinder(r=5,h=52);
}}
translate([-15,75,10]){  //rubberband path8
rotate(a=90, v=[1,0,0]){
    cylinder(r=5,h=42);
}}
translate([-14,29,10]){  //rubberband path9
rotate(a=90, v=[1,0,0]){
    cylinder(r=5,h=35);
}}
translate([-15,4,10]){//rubberband striker hole
rotate(a=90, v=[0,1,0]){
    cylinder(r=2,h=35);
}}
translate([15,4,10]){//rubberband smoothing
rotate(a=90, v=[1,0,0]){
    cylinder(r=2,h=30);
}}
hull(){    // cleanup rubberband ejector1
translate([12,10,21]){
    sphere(4);
}
translate([13,10,15]){
    sphere(4);
}}
hull(){    // cleanup rubberband ejector2
translate([12,25,21]){
    sphere(4);
}
translate([13,25,15]){
    sphere(4);
}}
translate([3,0,-10]){  // plunger
cube([7,40,15]);
translate([-10.5,-2,0]){
cube([7,80,15]);
}}
}}}

// Beginning of new difference.
rotate([0,worldR,0]){
translate([0,0,worldT]){
    
translate([-10,36,8]){// this works.
    cube([10,4,4]);
}
translate([-10,48,8]){
    cube([10,4,4]);
}
translate([-.5,36,10]){
    cube([4,4,10]);
}
translate([-.5,48,10]){
    cube([4,4,10]);
}
translate([-8,36,8]){  // resesses
    cube([10,16,4]);
}
translate([-.5,36,8]){
    cube([4,16,10]);
}
}}}
// This is connected to the union at the top.
rotate([0,worldR,0]){ 
translate([0,0,worldT]){
difference(){ // Pin and notch
translate([-13,18,10]){
rotate(a=90, v=[0,1,0]){
    cylinder(r=3,h=5);
}}
translate([-11,19,-4]){
    cube([2,20,21],0);
}}
}}}

