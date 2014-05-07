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
//	D = 8;
	D = 14;
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
//	D = 3;
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
	D = 11;
	cube([H,W,D]);
	Hin = 7.8;
	Win = 3.8;
	Din = 3;
	translate([7,59,2.5])cube([Hin,Din,Win]);
	Hut = 14;
	Wut = 7;
	Dut = 1.6;
	translate([23.5,59,2.5])cube([Hut,Dut,Wut]);
}

module Speaker()
{
	H = 15;
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
	H = 16;
	W = 10;
	D = 2;
	cube([H,W,D]);
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