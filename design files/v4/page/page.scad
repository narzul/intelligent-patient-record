pagesizeh = 310;
pagesizew = 244;
tapsw = 3;
tapsh = 20;
z = 3;
module page()
{
	difference()
	{
		cube([pagesizeh,pagesizew,z]);
		dif();
	}
}
module dif()
{
	union()
	{
		#translate([85,0,0])cube([140,100,3]);
		translate([0,0,0])rotate([0,0,0])#outcut();
		translate([305,0,-1])rotate([0,0,0])#outcut1();
		translate([305,239,-1])rotate([0,0,0])#outcut2();
		translate([0,239,-1])rotate([0,0,0])#outcut3();
	}
}
module outcut()
{
	difference()
	{
		cube([5,5,5]);
		translate([5,5,0])cylinder(5,5,5,center);
	}
}
module outcut1()
{
	difference()
	{
		cube([5,5,5]);
		translate([0,5,0])cylinder(5,5,5,center);
	}
}
module outcut2()
{
	difference()
	{
		cube([5,5,5]);
		translate([0,0,0])cylinder(5,5,5,center);
	}
}
module outcut3()
{
	difference()
	{
		cube([5,5,5]);
		translate([5,0,0])cylinder(5,5,5,center);
	}
}