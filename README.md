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
```
