include <component2.scad>;
include <..\page\page.scad>;
include <..\page\page2.scad>;
include <..\page\triangle.scad>;
include <..\nutsnbolts-master\cyl_head_bolt.scad>;
//Antenna();*
//Arduino();
//WIFI();
//Charger();*
//Battery();*
//Chargerbarrery();*
//$fn=60;

module nutscrew(p1,p2)
{
			translate([p1,p2,-1])rotate([0,180,0])
				hole_through(name="M3", l=15, cl=0.1, h=12, hcl=0.4);
//			translate([p1,p2,21]) nut("M3");
}
module cut()
{
	difference()
	{
		union()
		{
//			translate([79,40,0])rotate([0,180,0])
//				hole_through(name="M3", l=15, cl=0.1, h=11, hcl=0.4);
//			translate([79,50,11])rotate([0,180,0])screw("M3x10");
			translate([80,0,0])cube([150,110,19]);
//			translate([80,0,15])cube([150,110,6]);
//			translate([0,0,22])page();
//			translate([0,0,11])page2();
		}
		union()
		{
			nutscrew(84,10);
			nutscrew(84,95);
			nutscrew(226,10);
			nutscrew(226,95);
			translate([90,5,3])cube([130,100,16]);
			#translate([90,8,22])rotate([0,90,270])Led2();
//			nutscrew(200,95);
//			nutscrew(100,95);
//			translate([85,10,21]) nut("M3");

//			rotate([0,0,90])translate([3,-138,3])Tag();
			translate([213,61.9,4])rotate([0,0,180])Chargerbarrery();
//			translate([190,91,22])rotate([0,90,90])Led2();
//			rotate([0,90,0])translate([-20,70,98])Speaker();
//			translate([160,20,15])Antenna();
//			translate([175,64,4])RFID();
//			translate([173,64,6])rotate([0,0,90])Arduino();
//			translate([111,70,6])rotate([0,0,0])WIFI();

			//wire
//			translate([140,3,5])cube([13,10,15]);
//			translate([140,13,5])cube([10,60,15]);
//			translate([105,72,5])cube([10,10,15]);
//			translate([170,66,5])cube([10,14,15]);
//			translate([150,74,5])cube([10,18,15]);
//			translate([200,40,15])cube([10,30,5]);
//			translate([185,72,15])cube([5,20,5]);
			
			//lock
//			translate([225,40,15])rotate([0,0,90])triangle();
//			translate([85,40,15])rotate([0,0,0])triangle();
//			translate([225,0,15])cube([5,120,3]);
//			translate([80,0,15])cube([5,120,3]);
//			translate([80,100,15])cube([150,10,3]);
		}
	}
}
cut();
//Led();
