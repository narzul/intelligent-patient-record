pagesizeh = 310;
pagesizew = 244;
tapsw = 3;
tapsh = 20;
z = 3;
module page()
{
	difference()
	{
		union()
		{
			cube([pagesizeh,pagesizew,z]);
			taps();
		}
		dif();
	}
}
module dif()
{
	union()
	{
	translate([305,239,0])rotate([0,0,0])#outcut();
	translate([305,0,-1])rotate([0,0,0])#outcut1();
	}
}
module taps()
{
	translate([40,-3,0])cube([tapsh,tapsw,z]);
	translate([40,244,0])cube([tapsh,tapsw,z]);
	translate([-3,222,0])cube([tapsw,tapsh,z]);
	translate([-3,142,0])cube([tapsw,tapsh,z]);
	translate([-3,82,0])cube([tapsw,tapsh,z]);
	translate([-3,2,0])cube([tapsw,tapsh,z]);
}
module outcut()
{
	difference()
	{
		cube([5,5,5]);
		cylinder(5,5,5,center);
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

projection(cut)
page();