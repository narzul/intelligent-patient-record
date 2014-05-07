module Antenna()
{
	H = 41;
	W = 31;
	D = 4;
	cube([H,W,D]);
}

module RFID()
{
	H = 39;
	W = 19;
	D = 8;
	cube([H,W,D]);
}
module Arduino()
{
	H = 34;
	W = 17;
//	D = 3;
	D = 12;
	cube([H,W,D]);
}
module WIFI()
{
	H = 41;
	W = 27;
	D = 12;
	cube([H,W,D]);
}

module Charger()
{
	H = 58.50;
	W = 20;
	D = 9.50;
	cube([H,W,D]);
}

module Battery()
{
	H = 60.30;
	W = 37.20;
	D = 11;
	cube([H,W,D]);
}
module Chargerbarrery()
{
	H = 61.50;
	W = 59;
	D = 12;
	cube([H,W,D]);
	Hin = 10;
	Win = 5;
	Din = 3;
	translate([7,59,2])cube([Hin,Din,Win]);
	Hut = 16;
	Wut = 8;
	Dut = 2;
	translate([23,59,2])cube([Hut,Dut,Wut]);
}

module Speaker()
{
	H = 18;
	W = 15;
	D = 10;
	cube([H,W,D]);
}

module Tag()
{
	H = 64;
	W = 41;
	D = 16;
	cube([H,W,D]);
}
module Led()
{
	H = 17;
	W = 8;
	D = 1;
	cube([H,W,D]);
	
	translate([6,0,1])cube([5,5,D]);
}
module Led2()
{
	H = 5;
	W = 5;
	D = 9;
	cube([H,W,D]);
	H2 = 6;
	W2 = 6;
	D2 = 1;
	translate([-0.5,-0.5,0])cube([H2,W2,D2]);
}