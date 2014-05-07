taphpaper = 20;
tapwpaper = 3;
taphbox = 6;
tapwbox = 3;
taphboxfb = 10;
tapwboxfb = 3;
projection(cut)rightside();

module rightside()
{
	difference()
	{
		union()
		{
			cube([50,28,3]);
			translate([0,-70,3])trapeze(3,70,9,50);
		}
		rotate([0,0,250])translate([59,28.2,0])outcut();
		rotate([0,0,180])translate([-5,65,0])outcut();
		rotate([0,0,-90])translate([40,3,0])cube([taphpaper,tapwpaper,4]);
		translate([0,3,0])#cube([tapwbox,taphbox,3]);
		translate([0,19,0])#cube([tapwbox,taphbox,3]);
		translate([47,3,0])#cube([tapwbox,taphbox,3]);
		translate([47,19,0])#cube([tapwbox,taphbox,3]);
		translate([0,0,0])#cube([taphboxfb,tapwboxfb,3]);
		translate([0,25,0])#cube([taphboxfb,tapwboxfb,3]);
		translate([40,0,0])#cube([taphboxfb,tapwboxfb,3]);
		translate([40,25,0])#cube([taphboxfb,tapwboxfb,3]);
		translate([20,0,0])#cube([taphboxfb,tapwboxfb,3]);
		translate([20,25,0])#cube([taphboxfb,tapwboxfb,3]);
	}
}
module trapeze(len,dep,ht,wht)
{
	rotate([0,90,0])polyhedron
	(
		points=[ [0,0,0],[0,dep,0],[0,dep,wht],
		[0,0,ht],[len,dep,0],[len,dep,wht],
		[len,0,ht],[len,0,0] ],
		triangles= [
		[0,1,2],[2,3,0], // R-side
		[4,5,1],[5,2,1], // Front vertical
		[2,5,6],[6,3,2], // Front slant
		[7,5,4],[7,6,5], // L side
		[0,3,7],[3,6,7], // Back vertical
		[0,7,1],[1,7,4]  // Bottom
	]);
}

module outcut()
{
	difference()
	{
		cube([5,5,4]);
		cylinder(5.1,5.1,5.1,center);
	}
}