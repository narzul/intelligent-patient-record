module rightside()
{
	difference()
	{
		cube([46,316,3]);
		righttap();
	}
}
module righttap()
{
	for ( i = [0 : 1] )
	{
		translate([0,303*i,0])cube([3,13,3]);
		translate([43,303*i,0])cube([3,13,3]);
	}
	translate([0,3,0])
	union()
	{
		for ( j = [0 : 1] )
		{
			for ( i = [1 : 14] )
			{
				translate([43*j,20*i,0])cube([3,10,3]);
			}
		}
	}
	for ( j = [0 : 1] )
	{
		translate([0,313*j,0])cube([13,3,3]);
		translate([33,313*j,0])cube([13,3,3]);
	}
}

//projection(cut=true)
//rightside();