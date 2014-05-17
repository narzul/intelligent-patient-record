use<box/bot.scad>;
use<box/top.scad>;
use<page/page.scad>;
use<box/front.scad>;
use<box/back.scad>;
use<box/rightside.scad>;
use<box/leftside.scad>;
rotate([180,270,0])translate([0,0,-100])leftside();
rotate([180,270,0])translate([0,0,347])rightside();
translate([0,-28,147])top();
translate([0,-28,-100])bot();
rotate([90,0,0])translate([0,0,-50])back();
rotate([90,0,0])translate([0,0,125])front();
rotate([0,0,90])translate([100,-247,3])page();

