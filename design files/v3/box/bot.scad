width = 250;
height = 28;
tapw = 10;
taph = 3;
z = 3;

module bot()
{
	difference()
	{
		cube([width,height,z]);
		tap();
	}
}

module tap()
{
	for ( i = [0 : 12] )
	{
		translate([20*i,0,0])cube([tapw,taph,z]);
		translate([20*i,25,0])cube([tapw,taph,z]);
	}
	translate([0,9,0])cube([taph,tapw,z]);
	translate([247,9,0])cube([taph,tapw,z]);
}
projection(cut)bot();