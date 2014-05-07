include <component.scad>;
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
$fn=60;

module nutscrew(p1,p2)
{
			#translate([p1,p2,-1])rotate([0,180,0])
				hole_through(name="M3", l=13, cl=0.1, h=8, hcl=0.4);
			#translate([p1,p2,21])scale([1,1,1.22]) nut("M3");
}
module cut()
{
	difference()
	{
		union()
		{
			translate([80,0,0])cube([150,110,15]);
			translate([80,0,15])cube([150,110,6]);
//			translate([0,0,22])page();
//			translate([0,0,11])page2();
		}
		union()
		{
			nutscrew(84,10);
			nutscrew(84,95);
			nutscrew(226,10);
			nutscrew(226,95);
			nutscrew(200,95);
			nutscrew(100,95);
//			translate([85,10,21]) nut("M3");

			rotate([0,0,90])translate([3,-138,3])Tag();
			translate([213,61.9,4])rotate([0,0,180])Chargerbarrery();
			translate([190,91,17])rotate([0,90,90])Led2();
			rotate([0,90,0])translate([-17,70,98])Speaker();
			translate([160,20,15])Antenna();
			translate([175,64,4])RFID();
			translate([173,64,6])rotate([0,0,90])Arduino();
			translate([111,70,6])rotate([0,0,0])WIFI();

			//wire
			translate([140,3,5])cube([13,10,10]);
			translate([140,13,5])cube([10,60,10]);
			translate([105,72,5])cube([10,10,10]);
			translate([170,66,5])cube([10,14,10]);
			translate([150,74,5])cube([10,18,10]);
			translate([200,40,15])cube([10,30,3]);
			translate([185,72,15])cube([5,20,3]);
			
			//lock
//			translate([225,40,15])rotate([0,0,90])triangle();
//			translate([85,40,15])rotate([0,0,0])triangle();
			translate([225,0,15])cube([5,120,3]);
			translate([80,0,15])cube([5,120,3]);
			translate([80,100,15])cube([150,10,3]);
		}
	}
}
cut();
//Led();
