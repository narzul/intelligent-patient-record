witdh = 250;
height = 50;
z = 3;
tapw = 10;
taph = 3;

module back()
{
	difference()
	{
		cube([witdh,height,z]);
		tap();
	}
}
module tap()
{
	for ( i = [0 : 12] )
	{
		translate([10+(20*i),47,0])cube([tapw,taph,z]);	
		translate([10+(20*i),0,0])cube([tapw,taph,z]);
	}
	for(i=[0:1])
	{
		translate([247*i,10,0])cube([taph,tapw,z]);
		translate([247*i,30,0])cube([taph,tapw,z]);
	}
	translate([5,3,0])cube([tapw*2,taph,z]);
	translate([225,3,0])cube([tapw*2,taph,z]);
	translate([85,3,0])cube([tapw*2,taph,z]);
	translate([145,3,0])cube([tapw*2,taph,z]);
}
projection(cut)back();