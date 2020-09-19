$fn = 30;
diameter = 15;
thickness = 2;

union()
{
    difference()
    {
        cylinder(d=diameter, h=thickness);
        cylinder(d=diameter - thickness, h=thickness);
    }
    translate([diameter / 2 - thickness / 2, -thickness / 2, 0]) cube([40, thickness, thickness]);
}