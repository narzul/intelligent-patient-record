module inside()
{
	difference()
	{
		cube([46,22,3]);
		insidetap();
	}
}
module insidetap()
{
	for(i=[0:1])
	{
		translate([43*i,0,0])cube([3,3,3]);
		translate([43*i,19,0])cube([3,3,3]);
	}
}

//projection(cut=true)
//inside();