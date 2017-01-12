$fn=25;   // For persion of polygons

height = 24;
radius = 7;
gap = 2;

cap = 3;
fuse= 1.5;
pipe= 4;

difference(){
union(){
difference(){
union(){   // this is my base shape
cylinder(r=radius,h=height);
translate([0,0,height]){
sphere(radius);}
}

translate([0,0,gap]){ // this is ring
difference(){
cylinder(r=(radius+gap),h=(gap*gap));
cylinder(r=(radius-gap),h=(gap*gap));
}}
}

translate([0,0,(gap*gap)]){ // this is the slope
    cylinder(gap,r=radius,(radius-gap));
}
}

translate([0,0,-1]){ // cap grove
    cylinder(cap,r=cap);
}
translate([0,0,-1]){ // fuse grove
    cylinder((height*height),r=fuse);
}
translate([0,0,(gap*gap)]){ // pipe grove
    cylinder((height*height),r=pipe);
}
}