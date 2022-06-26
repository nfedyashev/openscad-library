UD27_WIDTH = 28;
UD27_HEIGHT = 27;
PROFILE_LENGTH = 1000;
METAL_THICKNESS_MM = 0.55; // [0.4, 0.45, 0.55, 0.6]

module ud27(pos=[0,0,0], angle=[0,0,0], center=false, length=PROFILE_LENGTH) {
  newpos = [center ? pos[0]-UD27_WIDTH/2 : pos[0], center ? pos[1] - length / 2 : pos[1], center ? pos[2] - UD27_HEIGHT / 2 : pos[2]];

  translate(newpos) rotate(angle) union() {
    cube([UD27_WIDTH, length, METAL_THICKNESS_MM]);

    translate([0, 0, UD27_HEIGHT])
      rotate([0, 90, 0])
      cube([UD27_HEIGHT, length, METAL_THICKNESS_MM]);

    translate([UD27_WIDTH-METAL_THICKNESS_MM, 0, UD27_HEIGHT])
      rotate([0, 90, 0])
        cube([UD27_HEIGHT, length, METAL_THICKNESS_MM]);
  }
}

// Example, uncomment to view
/* test_ud27(); */

module test_ud27() {
  /* ud27(pos=[0, 00, 00], center=true); */
  /* ud27(pos=[0, 00, 00], center=false); */
  /* ud27(pos=[0, 00, 00], center=false); */
}
