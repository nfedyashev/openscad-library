PROFILE_HEIGHT    = 20;
PROFILE_WIDTH     = 30;
PROFILE_THICKNESS = 1.5;

PROFILE_LENGTH    = 1000;

/* Труба профільна прямокутна алюміній Braz Line анодоване срібло 1 м 20x30x1,5x1000мм */

module tube2030(pos=[0,0,0], angle=[0,0,0], center=false, length=PROFILE_LENGTH) {
  newpos = [center ? pos[0]-PROFILE_WIDTH/2 : pos[0], center ? pos[1] - length / 2 : pos[1], center ? pos[2] - PROFILE_HEIGHT / 2 : pos[2]];

  rotate(angle)  translate(newpos){
    difference() {
        cube([PROFILE_WIDTH, length, PROFILE_HEIGHT]);

        translate([PROFILE_THICKNESS/2, -0.1, PROFILE_THICKNESS/2])
        cube([PROFILE_WIDTH - PROFILE_THICKNESS, length+1, PROFILE_HEIGHT - PROFILE_THICKNESS]);
    }
 }
}

// Example, uncomment to view
/* test_tube2030(); */

module test_tube2030() {
  tube2030(pos=[0, 00, 00], center=true, length=350);
  /* tube2030(pos=[0, 00, 00], center=false); */
  /* tube2030(pos=[0, 00, 00], center=false); */
}
