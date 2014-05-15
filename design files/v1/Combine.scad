translate([0,0,80])scale([1,1,3])
import("topbot.stl");
translate([0,0,60])scale([1,1,3])
import("th.stl");
translate([0,0,40])scale([1,1,3])
import("middel.stl");
translate([0,0,20])scale([1,1,3])
import("first.stl");
translate([0,0,0])scale([1,1,3])
import("topbot.stl");
translate([0,-200,0])rotate([00,90,90])scale([1,1,3])
import("box/sides.stl");
translate([0,400,0])rotate([00,90,90])scale([1,1,3])
import("box/sides.stl");
translate([-200,0,-100])rotate([0,0,90])scale([1,1,3])
import("box/bot.stl");
translate([-140,0,0])rotate([90,00,90])scale([1,1,3])
import("box/innersidewall.stl");
translate([-260,0,0])rotate([90,00,90])scale([1,1,3])
import("box/outsidewall.stl");
translate([-200,0,100])rotate([00,00,90])scale([1,1,3])
import("box/top.stl");




