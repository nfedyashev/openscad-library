$fn= $preview ? 64 : 128;

FRAME_SUPPORT_DIAMETER = 34.5;
FRAME_WIDTH = 68;
SHAFT_DIAMETER = 12.7;

CRANKSET_LENGTH = 127; // [103, 108, 110.5, 113, 115, 118, 120, 122.5, 124, 127]

SIDE_SUPPORT_DIMENSION = 2;

module bsa_bracket(pos=[0,0,0], angle=[0,0,0], center=false) {
  newpos = [center ? pos[0]-0 : pos[0], center ? pos[1] - 0 : pos[1], center ? pos[2] - 0 / 2 : pos[2]];

  translate(newpos) rotate(angle)
  union() {
    translate_x_0 = center ? 0 : CRANKSET_LENGTH/2-FRAME_WIDTH/2;
    translate([translate_x_0,0,0])
      color("lightsteelblue")
      rotate([0, 90, 0])
      cylinder(h=FRAME_WIDTH, d=FRAME_SUPPORT_DIAMETER, center=center);


    translate_x_1 = center ? FRAME_WIDTH/2-SIDE_SUPPORT_DIMENSION/2 : CRANKSET_LENGTH/2+FRAME_WIDTH/2-SIDE_SUPPORT_DIMENSION;
    translate([translate_x_1, 0, 0])
    color("lightsteelblue")
    rotate([0, 90, 0])
      cylinder(h=SIDE_SUPPORT_DIMENSION, d=FRAME_SUPPORT_DIAMETER+SIDE_SUPPORT_DIMENSION, center=center);


    translate_x_2 = 0;
    translate([translate_x_2, 0, 0])
    color("black")
    rotate([0, 90, 0])
      cylinder(h=CRANKSET_LENGTH, d=SHAFT_DIAMETER, center=center);

  }
}

// Example, uncomment to view
/* test_bsa_bracket(); */

module test_bsa_bracket() {
  bsa_bracket(pos=[0, 0, 0], center=true);
  /* bsa_bracket(pos=[0, 00, 00], center=true); */
  /* bsa_bracket(pos=[0, 00, 00], center=false); */
  /* bsa_bracket(pos=[0, 00, 00], center=false); */
}
