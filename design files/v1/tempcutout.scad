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
module main()
{
	translate ([psizew-104,psizeh-178,0])cube([94,168,5]);
	translate ([12,bdfrombot2+bheight+10,0])cube([97,37,10]);
}
projection(cut = true)main();