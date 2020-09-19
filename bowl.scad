$fn = 100;

difference()
{
    sphere(d=100); // +
    translate([-50, -50, 0]) cube([100,100,100]); // -
    sphere(d=90); // -
}