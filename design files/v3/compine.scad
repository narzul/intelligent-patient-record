use<box\bot.scad>;
use<box\top.scad>;
use<page\page.scad>;
use<box\front.scad>;
use<box\back.scad>;
use<box\rightside.scad>;
use<box\leftside.scad>;
rotate([180,270,0])translate([0,0,0])leftside();
rotate([180,270,0])translate([0,0,247])rightside();
translate([0,-28,47])top();
translate([0,-28,0])bot();
rotate([90,0,0])translate([0,0,0])back();
rotate([90,0,0])translate([0,0,25])front();
rotate([0,0,90])translate([0,-247,3])page();

