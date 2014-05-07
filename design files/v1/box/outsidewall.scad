tapwitdh = 20;
tapheight = 3;
bot = 0;
top = 37;
module inderside()
{
	difference() 
	{
		cube([310,40,1]);
		union()
		{
			translate([60,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([230,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([20,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([270,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([100,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([190,bot,-1]) cube([tapwitdh,tapheight,5]);
			translate([145,bot,-1]) cube([tapwitdh,tapheight,5]);

			translate([20,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([270,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([60,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([230,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([100,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([190,top,-1]) cube([tapwitdh,tapheight,5]);
			translate([145,top,-1]) cube([tapwitdh,tapheight,5]);

			//translate([60,12,-1]) cube([tapwitdh,tapheight,5]);
			//translate([230,12,-1]) cube([tapwitdh,tapheight,5]);
		}
	}
	translate([-3,10,0])cube([tapheight,tapwitdh,1]);
	translate([310,10,0])cube([tapheight,tapwitdh,1]);
}
projection(cut = true) inderside();