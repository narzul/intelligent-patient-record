include <component.scad>;
include <..\page\page.scad>;
include <..\page\page2.scad>;
include <..\page\triangle.scad>;
//Antenna();*
//Arduino();
//WIFI();
//Charger();*
//Battery();*
//Chargerbarrery();*
module cut()
{
	difference()
	{
		union()
		{
			translate([85,-200,0])cube([140,100,15]);
			translate([85,-200,115])cube([140,100,6]);
			translate([0,0,130])page();
			translate([0,0,27])page2();
		}
		union()
		{
			translate([0,-200,0])cc();
			translate([0,-200,100])cc();
		}
	}
}
module cc()
{

			#rotate([0,0,90])translate([3,-138,3])Tag();
			#translate([213,61.9,4])rotate([0,0,180])Chargerbarrery();
			#translate([190,81,17])rotate([0,90,90])Led2();
			#rotate([0,90,0])translate([-17,70,98])Speaker();
			#translate([160,20,15])Antenna();
			#translate([175,64,4])RFID();
			#translate([173,64,6])rotate([0,0,90])Arduino();
			#translate([111,70,6])rotate([0,0,0])WIFI();

			//wire
			#translate([140,3,5])#cube([13,10,10]);
			#translate([140,13,5])#cube([10,60,10]);
			#translate([105,72,5])#cube([10,10,10]);
			#translate([170,66,5])#cube([10,14,10]);
			#translate([150,74,5])#cube([10,18,10]);
			#translate([200,40,15])#cube([10,30,3]);
			#translate([180,90,15])#cube([30,10,3]);
			
			//lock
//			translate([225,40,15])rotate([0,0,90])triangle();
//			translate([85,40,15])rotate([0,0,0])triangle();
			translate([225.001,45,15])rotate([0,0,180])triangle();
			translate([85,45,15])rotate([0,0,270])triangle();
}
cut();
//Led();
