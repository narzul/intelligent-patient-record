module top()
{
	difference()
	{
		cube([28,310,1]);
		tap();
	}
}
module tap()
{
	union()
	{
		for ( j = [0 : 1] )
		{
			for ( i = [1 : 15] )
			{
				translate([25*j,20*i-10,0])cube([3,10,1]);
			}
//		translate([0,307*j,0])cube([4,3,1]);
//		translate([33,307*j,0])cube([4,3,1]);	
		}
	}
	for ( j = [0 : 1] )
	{
		translate([6,307*j,0])cube([16,3,1]);
	}
	translate([6,3,0])cube([16,3,1]);
	translate([6,186,0])cube([16,3,1]);
}

projection(cut=true)top();