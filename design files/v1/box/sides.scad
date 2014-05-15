tapwitdh = 20;
tapwitdh2 = 12;
tapheight = 3;
module side()
{
	difference()
	{
		union()
		{
			cube([40,24,1]);
			translate([40,-80,0])import("poludron.stl");
		}
		union()
		{
			translate([10,21,-1]) cube([tapwitdh,tapheight,5]);
			translate([10,0,-1]) cube([tapwitdh,tapheight,5]);
			translate([34,-60,-1]) cube([tapheight,tapwitdh,5]);
			translate([37,6,-1]) cube([tapheight,tapwitdh2,5]);
			translate([0,6,-1]) cube([tapheight,tapwitdh2,5]);
		}
	}
}
side();