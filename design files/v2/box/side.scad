tapwitdh = 20;
tapwitdh2 = 6;
tapheight = 3;
module side()
{
	difference()
	{
		union()
		{
			cube([46,28,3]);
			translate([46,-80,0])import("poludronside.stl");
		}
		union()
		{
			for ( i = [0 : 1])
			{
				translate([43,22*i,-1]) cube([tapheight,tapwitdh2,5]);
				translate([0,22*i,-1]) cube([tapheight,tapwitdh2,5]);
				translate([13,25*i,-1]) cube([tapwitdh,tapheight,5]);
			}
			translate([40,-60,-1]) cube([tapheight,tapwitdh,5]);
		}
	}
}

//projection(cut = true)
//side();