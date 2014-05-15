tapwitdh = 20;
tapheight = 3;
tapwitdh2 = 12;
bot = -3;
top = 18;
module inderside()
{
		cube([310,18,1]);
			translate([60,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([230,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([230,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([20,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([270,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([100,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([190,bot,0]) cube([tapwitdh,tapheight,1]);
			translate([145,bot,0]) cube([tapwitdh,tapheight,1]);

			translate([20,top,0]) cube([tapwitdh,tapheight,1]);
			translate([270,top,0]) cube([tapwitdh,tapheight,1]);
			translate([60,top,0]) cube([tapwitdh,tapheight,1]);
			translate([230,top,0]) cube([tapwitdh,tapheight,1]);
			translate([100,top,0]) cube([tapwitdh,tapheight,1]);
			translate([190,top,0]) cube([tapwitdh,tapheight,1]);
			translate([145,top,0]) cube([tapwitdh,tapheight,1]);

	translate([-3,3,0])cube([tapheight,tapwitdh2,1]);

	translate([310,3,0])cube([tapheight,tapwitdh2,1]);

}
inderside();