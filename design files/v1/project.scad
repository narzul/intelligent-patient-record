psizeh = 310;
psizew = 245;

bwith = 42;
bheight = 46;
bdepth = 4;
bdbetween = 18+bwith;
bdfrombot = 12;
bdfrombot2 = 18+bdfrombot+bheight;
bdfromside = 12;

hwwidth = 8;
hwfrombot = bdfrombot+bheight+5;
hwfrombotconbat = bdfrombot+bheight;

rfwirewidth = 41;
rfwireheight = 30;
rfwirefromtop = psizeh-rfwireheight-bdfromside;

rfwitdh = 38;
rfheight = 18;
rffromtop = psizeh-rfwireheight-bdfromside;
rffromside = rfwirewidth+bdfromside+bdfromside;

wifywidth = 31;
wifyheight = 53;
wififromtop = psizeh-wifyheight-rfwireheight-bdfromside-18;

spwidth = 18;
sphight = spwidth;
spfromtop = psizeh-sphight-rfwireheight-bdfromside*2-18;
spfromside = bdfromside+18+wifywidth;

arwidth = 18;
arheight = 34;
arfromtop = psizeh-arheight-rfwireheight-bdfromside-18;
arfromside = spfromside+spwidth+bdfromside;

buhight = 42;
buwidth = 16;
bufromtop = psizeh-bdfromside-buhight-1;
bufromside = bdfromside*3+rfwitdh+rfwirewidth;

//tapwidth = 20;
//tapheight = 3;
//	translate([0,psizeh,0])cube([tapwidth,tapheight,1]);

module main()
{
	difference() {
		cube([psizew, psizeh, 1]);
		union()
		{
			highway();
			battery();
			rfid();
			rfidwire();
			wify();
			speaker();
			bluetooth();
			arduino();
		}
	}
}

module highway()
{
	//bat connection
	translate ([bdfromside+bwith-8,hwfrombotconbat,0])cube([hwwidth,18, hwwidth]);
	translate ([bdfromside+bwith+bdbetween-8,hwfrombotconbat,0])cube([hwwidth,18, hwwidth]);
	translate ([bdfromside+bdbetween*2,hwfrombotconbat,0])cube([hwwidth,18, hwwidth]);
	translate ([bdfromside+bdbetween*3,hwfrombotconbat,0])cube([hwwidth,18, hwwidth]);
	translate ([bdfromside+bwith,hwfrombot,0])cube([bdfromside+bdbetween*2+8,hwwidth, hwwidth]);

	//from bat
	translate ([bdfromside+bwith+bdbetween+5,hwfrombotconbat+5,0])cube([hwwidth,140, hwwidth]);
	translate ([bdfromside+bwith+bdbetween+5,140+hwfrombotconbat+5,0])rotate([0,0,180])cube([20,hwwidth, hwwidth]);
	translate ([bdfromside+bwith+bdbetween+5-23,132+hwfrombotconbat+5,0])cube([hwwidth,25, hwwidth]);

	//ard
	translate ([bdfromside+bwith+bdbetween+5-24,arheight+152+hwfrombotconbat+5,0])cube([hwwidth,25, hwwidth]);
	translate ([bdfromside+bwith+bdbetween+5,arheight+166+hwfrombotconbat+5,0])rotate([0,0,180])
	cube([65,hwwidth, hwwidth]);
	translate ([spfromside-5,spfromtop+43,0])rotate([0,0,180])cube([hwwidth,83, hwwidth]);
	translate ([0,spfromtop-40,0])cube([50,hwwidth, hwwidth]);
	translate ([20,psizeh-42,0])cube([50,hwwidth, hwwidth]);
	translate ([20,psizeh-85,0])cube([50,hwwidth, hwwidth]);
}

module bluetooth()
{
	translate ([bufromside,bufromtop,0]) cube([buwidth,buhight, bdepth]);
}

module arduino()
{
	translate ([arfromside,arfromtop,0]) cube([arwidth,arheight, bdepth]);
}

module speaker()
{
	translate ([spfromside,spfromtop,0])cube([spwidth,sphight, bdepth]);
}

module wify()
{
	translate ([bdfromside,wififromtop,0])cube([wifywidth,wifyheight, bdepth]);	
}

module rfid()
{
	translate ([rffromside,rffromtop,0]) cube([rfwitdh,rfheight, bdepth]);
}

module rfidwire()
{
	translate ([bdfromside,rfwirefromtop,0]) cube([rfwirewidth,rfwireheight, bdepth]);
}

module battery()
{
	translate ([bdfromside,bdfrombot,0])cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween,bdfrombot,0])	cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween*2,bdfrombot,0])	cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween*3,bdfrombot,0])	cube([bwith,bheight, bdepth]);

	translate ([bdfromside,bdfrombot2,0])cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween,bdfrombot2,0])	cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween*2,bdfrombot2,0])	cube([bwith,bheight, bdepth]);
	translate ([bdfromside+bdbetween*3,bdfrombot2,0])	cube([bwith,bheight, bdepth]);
}

main();