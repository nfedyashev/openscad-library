# openscad-library


How to use it?
=======

Install it locally:

```
cd your-project
mkdir vendor
touch vendor/.gitkeep
git submodule add git@github.com:nfedyashev/openscad-library.git vendor/openscad-library
```

Import into your scad file:

```
  use <vendor/openscad-library/ceiling_profile.scad>

  ud27();
  ud27(pos=[200, 100, 100]);
  ud27(pos=[200, 100, 100], angle=[0, 0, 0]);
  ud27(pos=[200, 100, 100], angle=[0, 0, 0], center=true);
  ud27(pos=[200, 100, 100], angle=[0, 0, 0], center=true, length=100);

  use <openscad-library/bsa_crank_bracket.scad>
  bsa_bracket();
  bsa_bracket(pos=[200, 100, 100]);
  bsa_bracket(pos=[200, 100, 100], angle=[0, 0, 0]);
  bsa_bracket(pos=[200, 100, 100], angle=[0, 0, 0], center=true);

  use <openscad-library/rectangular_tube.scad>
  tube2030();
  tube2030(length=350);
  tube2030(pos=[200, 100, 100]);
  tube2030(pos=[200, 100, 100], angle=[0, 0, 0]);
  tube2030(pos=[200, 100, 100], angle=[0, 0, 0], center=true);

```
