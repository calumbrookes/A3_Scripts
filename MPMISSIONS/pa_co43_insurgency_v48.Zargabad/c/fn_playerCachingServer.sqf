/*
//player caching  serversiode
	
*/

{ //update pos.. causes hiccups.
	_x setpos (getpos _x);
}foreach allunits - playableunits;