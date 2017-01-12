



rotate([0,90,0]){ // rotate on printing bed.
difference(){

translate([-5,0,0]){
minkowski() {
cube([132,60,12]);  // Brick
			cylinder(r=2,h=2);}}

translate([-15,2,2]){
minkowski() {
cube([140,56,8]);  // iphone5 cut out
			cylinder(r=2,h=2);}}

translate([17,3,-5]){
minkowski() {
cube([95,54,6]);  // screen cut out
			cylinder(r=2,h=2);}}

translate([4,19,-5]){
minkowski() {
cube([50,22,6]);  // front camera cut out
			cylinder(r=2,h=2);}}

translate([73,20,-15]){
minkowski() {
cube([50,20,20]);  // button cut out
			cylinder(r=2,h=2);}}

translate([120,10,4]){
cube([41,43,20]);} // Speaker cut out


translate([-35,5,4]){
cube([50,20,20]);} // Power cut out


translate([13,55,4]){
cube([34,20,20]);} // Volume cut out

translate([-34,4,-12]){
minkowski() {
cube([30,52,30]);  // rail cut out
			cylinder(r=2,h=2);}}


translate([-2,70,7]){
rotate([90,0,0]){		// Bolt Hole
			cylinder(r=3,h=90);}}

}}