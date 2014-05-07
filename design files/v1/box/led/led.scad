module led()
{
	difference()
	{
		cube([30,52,1]);
		union()
		{
			translate([15,40,0]) cylinder(1,2.6);
			translate([15,32,0]) cylinder(1,2.6);
			translate([15,24,0]) cylinder(1,2.7);
			translate([15,16,0]) cylinder(1,2.8);
			translate([15,8,0]) cylinder(1,2.9);
		}
	}
}
projection(cut = true)led();