include <triangle.scad>;
include <..\nutsnbolts-master\cyl_head_bolt.scad>;

pagesizeh = 310;
pagesizew = 244;
tapsw = 3;
tapsh = 20;
z = 3;
$fn=60;
module nutscrew(p1,p2)
{
			#translate([p1,p2,-15])rotate([0,180,0])
				hole_through(name="M3", l=15, cl=0.1, h=12, hcl=0.4);
//			#translate([p1,p2,21]) nut("M3");
}
module page2()
{
	mod2();
//	translate([180,90,0])cube([30,10,3]);
//	translate([225,45,0])rotate([0,0,180])triangle();
//	translate([85,45,0])rotate([0,0,270])triangle();
}
module mod2()
{
	difference()
	{
		cube([pagesizeh,pagesizew,z]);
		dif2();
	}
}
module dif2()
{
	union()
	{
			nutscrew(80,5);
			nutscrew(80,110);
			nutscrew(230,5);
			nutscrew(230,110);

		translate([75,0,0])cube([160,15,3]);
		translate([80,10,0])cube([150,105,3]);
		translate([0,0,0])rotate([0,0,0])#outcut2();
		translate([305,0,-1])rotate([0,0,0])#outcut21();
		translate([305,239,-1])rotate([0,0,0])#outcut22();
		translate([0,239,-1])rotate([0,0,0])#outcut23();

//		translate([75,45,0])cube([10,2,3]);
//		translate([224.9,45,0])cube([10.1,2,3]);
//		translate([75,30,0])cube([5,15,3]);
//		translate([230,30,0])cube([5,15,3]);
	}
}
module outcut2()
{
	difference()
	{
		cube([5,5,5]);
		translate([5,5,0])cylinder(5,5,5,center);
	}
}
module outcut21()
{
	difference()
	{
		cube([5,5,5]);
		translate([0,5,0])cylinder(5,5,5,center);
	}
}
module outcut22()
{
	difference()
	{
		cube([5,5,5]);
		translate([0,0,0])cylinder(5,5,5,center);
	}
}
module outcut23()
{
	difference()
	{
		cube([5,5,5]);
		translate([5,0,0])cylinder(5,5,5,center);
	}
}