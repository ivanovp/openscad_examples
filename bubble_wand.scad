$fn=60;

diameter = 10;
thickness = 2;
rings = 5;
length = 40;
overlap = 0;

pi = 3.141592;
epsilon = 0.1;

module ring(diameter,thickness)
{
    difference()
    {
        cylinder(d=diameter, h=thickness);
        translate([0, 0, -epsilon / 2]) cylinder(d=diameter - thickness, h=thickness + epsilon);
    }
}

union()
{
    for ( i = [0 : rings - 1] )
    {
        rotate(360 / rings * i)
        {
            translate([diameter * rings / pi / 2 - overlap, 0, 0])
            {
                ring(diameter,thickness);
            }
        }
    }
    translate([diameter / 2 + diameter * rings / pi / 2 - thickness / 2 - overlap, -thickness / 2, 0]) cube([length,thickness,thickness]);
}
