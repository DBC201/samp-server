#include <a_samp>
#include <sscanf2>
#include <colors>

main()
{
	print("\n----------------------------------");
	print("THE MATRIX");
	print("----------------------------------\n");
}

new car_baran, car_dbc;

public OnGameModeInit()
{
	SetGameModeText("Maintenance in progress");
	for(new c=0;c<312;c++){
	    AddPlayerClass(c, 1958.3783, 1343.1572, 15.3746, 269.1425, 31, 999, 32, 999, 34, 999);
	}
	car_baran = AddStaticVehicle(541,2024.6455,1351.4067,10.1722,270.0350,3,6); // bullet
	car_dbc = AddStaticVehicle(411,2024.1180,1334.5020,10.2187,270.0513,126,126); // infernus
 	AddVehicleComponent(car_baran, 1010);//nitro*10
	AddVehicleComponent(car_baran, 1086);//stereo
	AddVehicleComponent(car_dbc, 1010);
	AddVehicleComponent(car_dbc, 1086);
	AddStaticVehicle(425,346.1175,2539.4690,17.3246,181.2373,43,0); // heli 1
	AddStaticVehicle(425,365.4366,2538.5593,17.2151,181.3995,43,0); // heli 2
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid,1951.4492,1343.1675,15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1951.4492,1343.1675,15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
    SetPlayerArmour(playerid, 100.0);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
    AddVehicleComponent(car_baran, 1010);//nitro*10
	AddVehicleComponent(car_baran, 1086);//stereo
	AddVehicleComponent(car_dbc, 1010);
	AddVehicleComponent(car_dbc, 1086);
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
