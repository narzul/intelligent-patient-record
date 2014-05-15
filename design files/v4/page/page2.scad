include <triangle.scad>;

pagesizeh = 310;
pagesizew = 244;
tapsw = 3;
tapsh = 20;
z = 3;
module page2()
{
	mod2();
	translate([180,90,0])cube([30,10,3]);
	translate([225,45,0])rotate([0,0,180])triangle();
	translate([85,45,0])rotate([0,0,270])triangle();
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
		translate([85,0,0])cube([139.9,100,3]);
		translate([0,0,0])rotate([0,0,0])#outcut2();
		translate([305,0,-1])rotate([0,0,0])#outcut21();
		translate([305,239,-1])rotate([0,0,0])#outcut22();
		translate([0,239,-1])rotate([0,0,0])#outcut23();

		translate([75,45,0])cube([10,2,3]);
		#translate([224.9,45,0])cube([10.1,2,3]);
		translate([75,30,0])cube([5,15,3]);
		translate([230,30,0])cube([5,15,3]);
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