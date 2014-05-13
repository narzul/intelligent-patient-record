include <component.scad>;
include <../page/page.scad>;
include <../page/page2.scad>;
include <../page/triangle.scad>;
include <../nutsnbolts-master/cyl_head_bolt.scad>;
//Antenna();*
//Arduino();
//WIFI();
//Charger();*
//Battery();*
//Chargerbarrery();*
$fn=60;

module screw2(p1,p2,p3)
{
			#translate([p1,p2,p3])rotate([0,180,0])
				hole_through(name="M3", l=20, cl=0.1, h=8, hcl=0.4);
//			#translate([p1,p2,p3])scale([1.1,1.1,1]) nut("M3");
//			#translate([p1,p2,p3])scale([1.1,1.1,1]) nut("M3");
//			#translate([p1,p2,21])scale([1,1,1]) nut("M3");
}
module nut2(p1,p2,p3)
{
//			#translate([p1,p2,-3])rotate([0,180,0])
//				hole_through(name="M3", l=20, cl=0.1, h=8, hcl=0.4);
			#translate([p1,p2,p3])scale([1.1,1.1,1]) nut("M3");
			#translate([p1,p2,p3])scale([1.1,1.1,1]) nut("M3");
//			#translate([p1,p2,21])scale([1,1,1]) nut("M3");
}

module nutscrew(p1,p2)
{
			#translate([p1,p2,-3])rotate([0,180,0])
				hole_through(name="M3", l=20, cl=0.1, h=8, hcl=0.4);
			#translate([p1,p2,20.3])scale([1.1,1.1,1]) nut("M3");
			#translate([p1,p2,22])scale([1.1,1.1,1]) nut("M3");
//			#translate([p1,p2,21])scale([1,1,1]) nut("M3");
}
module relate()
{
	translate([90,6,3])cube([75,105,16]);
	translate([90,6,3])cube([141,62,16]);
	translate([167,70,3])Tag();
	translate([228,61.9,4])rotate([0,0,180])Chargerbarrery();
	translate([90,3,15.001])rotate([270,00,0])Led();
	translate([235,15,15])cube([5,100,3]);
	translate([80,15,15])cube([5,100,3]);
	translate([80,115,15])cube([160,5,3]);
	nutscrew(85,5);
	nutscrew(85,110);
	nutscrew(235,5);
	nutscrew(235,110);
}
module cut()
{
		screw2(85,5,-50);
		screw2(85,110,-50);
		screw2(235,5,-50);
		screw2(235,110,-50);

		nut2(85,5,100);
		nut2(85,110,100);
		nut2(235,5,100);
		nut2(235,110,100);
	difference()
	{
		union()
		{
 			translate([80,0,0])cube([160,120,15]);
			translate([80,0,45])cube([160,120,6]);
			translate([0,150,60])page();
			translate([0,150,16])page2();
		}
		#union()
		{
			translate([310.1,394.1,60])rotate([0,0,180])#outcut2();
			translate([0,0,30])relate();
			nutscrew(85,5);
			nutscrew(85,110);
			nutscrew(235,5);
			nutscrew(235,110);
//			nutscrew(200,95);
//			nutscrew(100,95);

			translate([90,6,3])cube([75,105,16]);
			translate([90,6,3])cube([141,62,16]);
			translate([167,70,3])Tag();
			translate([228,61.9,4])rotate([0,0,180])Chargerbarrery();
			translate([90,3,15.001])rotate([270,00,0])Led();
			translate([221.5,91,-1])cylinder(h=4,r=3);
/*			rotate([0,90,0])translate([-17,70,98])Speaker();
			translate([160,20,15])Antenna();
			translate([175,64,4])RFID();
			translate([173,64,6])rotate([0,0,90])Arduino();
			translate([111,70,6])rotate([0,0,0])WIFI();
*/
			//wire
/*			translate([140,3,5])cube([13,10,10]);
			translate([140,13,5])cube([10,60,10]);
			translate([105,72,5])cube([10,10,10]);
			translate([170,66,5])cube([10,14,10]);
			translate([150,74,5])cube([10,18,10]);
			translate([200,40,15])cube([10,30,3]);
			translate([185,72,15])cube([5,20,3]);
	*/		
			//lock
			translate([235,15,15])cube([5,100,3]);
			translate([80,15,15])cube([5,100,3]);
			translate([80,115,15])cube([160,5,3]);
		}
	}
}
//rotate([0,180,0])
cut();
//Led();
