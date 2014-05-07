include<bot.scad>;
include<top.scad>;
include<leftside.scad>;
include<rightside.scad>;
include<side.scad>;
include<inside.scad>;
color([1,0,0])#top();
color([0,0,1])rotate([0,90,0]) translate([-3,0,0]) leftside(0,0,0);
color([0,0,1])rotate([0,90,0]) translate([-3,0,25]) rightside(0,0,0);
translate([0,0,-43])color([1,0,0])bot();

rotate([90,90,0]) translate([-3,3,-189]) inside(0,0,0);
rotate([90,90,0]) translate([-3,3,-6]) inside(0,0,0);

rotate([180,270,90])translate([-43,0,0])color([0,1,0])side(0,0,0);
rotate([180,270,90])translate([-43,0,313])color([0,1,0])side(0,0,0);