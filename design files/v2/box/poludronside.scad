module wedge(len,dep,ht,wht){

rotate([0,-90,0])polyhedron(
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

module fillet(r, h) {
    translate([r / 2, r / 2, 0])

        difference() {
            cube([r + 0.01, r + 0.01, h], center = true);

            translate([r/2, r/2, 0])
                cylinder(r = r, h = h + 1, center = true);

        }
}


module poludronside()
{
	difference()
	{
		wedge(3,80,18,46);
		#translate([0,0,0])rotate([0,0,90])fillet(5, 10);
		#translate([-19,-0.6,0])rotate([0,0,6.5])fillet(5, 10);
	}
}
poludronside();
