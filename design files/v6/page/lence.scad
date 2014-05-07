$fn=60;
projection()
set();
module set()
{
	difference()
	{
		translate([0,-24,0])cube([50,50,3]);
		union()
		{
			scale([1.0,1.5,1.0])cylinder(h=3, r=2);
			translate([25,-24,0])rotate([0,0,90])scale([1.2,1.5,1.0])cylinder(h=3, r=2);
		}
//		translate([0,-3,0])cube([5,6,5]);
	}
}