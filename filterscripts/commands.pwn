#define FILTERSCRIPT
#include <a_samp>
#include <sscanf2>
#include <colors>


public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("Commands by dbc201");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/gun", cmdtext, true, 4) == 0)
	{
	    if (strcmp("/gun", cmdtext, true, strlen(cmdtext)) == 0){
			print_weapons(playerid);
			return 1;
	    }
 		new weapon[20], ammo;
 		sscanf(cmdtext, "s[5]s[20]i", "/gun", weapon, ammo);
 		new weapon_id = get_weapon_id(weapon);
 		if(weapon_id == -1){
 		    SendClientMessage(playerid, COLOR_GRAY, "No weapon like that exist on this realm");
 		    return 1;
 		}
		GivePlayerWeapon(playerid, weapon_id, ammo);
		new name[MAX_PLAYER_NAME+1];
		GetPlayerName(playerid, name, sizeof(name));
		SendClientMessage(playerid, COLOR_GRAY, "Here u go");
		new output[MAX_PLAYER_NAME+25];
		format(output, sizeof(output), "%s gave himself %s", name, weapon);
		SendClientMessageToAll(COLOR_PURPLE, output);
		return 1;
	}else if(strcmp("/health", cmdtext, true, 7) == 0){
		new health;
		sscanf(cmdtext, "s[8]i", "/health", health);
		SetPlayerHealth(playerid, health);
		new name[MAX_PLAYER_NAME+1];
		GetPlayerName(playerid, name, sizeof(name));
		new output[MAX_PLAYER_NAME+22];
		format(output, sizeof(output), "%s set his health to %d", name, health);
		SendClientMessageToAll(COLOR_RED, output);
		return 1;
	}else if(strcmp("/armor", cmdtext, true, 6) == 0){
		new armor;
		sscanf(cmdtext, "s[7]i", "/armor", armor);
		SetPlayerArmour(playerid, armor);
		if(armor <= 0){
		    SendClientMessage(playerid, COLOR_GREY, "If you didn't want armor, why did u ask?");
		    return 1;
		}
		new name[MAX_PLAYER_NAME+1];
		GetPlayerName(playerid, name, sizeof(name));
		new output[MAX_PLAYER_NAME+21];
		format(output, sizeof(output), "%s set his armor to %d", name, armor);
		SendClientMessageToAll(COLOR_BLUE, output);
		return 1;
	}else if(strcmp("/repair", cmdtext) == 0){
        if(!IsPlayerInAnyVehicle(playerid)){
			SendClientMessage(playerid, COLOR_GRAY, "Get in a vehicle fool!");
			return 1;
		}
		RepairVehicle(GetPlayerVehicleID(playerid));
		new name[MAX_PLAYER_NAME+1];
		GetPlayerName(playerid, name, sizeof(name));
		new output[MAX_PLAYER_NAME+18];
		format(output, sizeof(output), "%s repaired his car", name);
		SendClientMessageToAll(COLOR_YELLOW, output);
        return 1;
    }
	return 0;
}

print_weapons(playerid){
	SendClientMessage(playerid, COLOR_GRAY, "Availible weapons are: brass_knuckles, golf, nite, knife, bat, shovel, pool_cue, katana,");
	SendClientMessage(playerid, COLOR_GRAY, "chainsaw, big_dildo, dildo, vibrator, silver_vibrator, flower, cane, grenade, gas, molotov, pistol, silenced_pistol,");
	SendClientMessage(playerid, COLOR_GRAY, "deagle, shotgun, sawnoff, combat_shotgun, uzi, mp5, ak47, m4, tec9, rifle, sniper, rpg, hs_rpg, flamethrower, minigun, satchel,");
	SendClientMessage(playerid, COLOR_GRAY, "detonator, spraycan, extinguisher, camera, nightvision, infrared, parachute");
	return 1;
}

get_weapon_id(weapon[]){
	if(strcmp(weapon, "brass_knuckles", true, strlen("brass_knuckles")) == 0){
		return 1;
	}else if(strcmp(weapon, "golf", true, strlen("golf")) == 0){
		return 2;
	}else if(strcmp(weapon, "nite", true, strlen("nite")) == 0){
		return 3;
	}else if(strcmp(weapon, "knife", true, strlen("knife")) == 0){
		return 4;
	}else if(strcmp(weapon, "bat", true, strlen("bat")) == 0){
		return 5;
	}else if(strcmp(weapon, "shovel", true, strlen("shovel")) == 0){
		return 6;
	}else if(strcmp(weapon, "pool_cue", true, strlen("pool_cue")) == 0){
		return 7;
	}else if(strcmp(weapon, "katana", true, strlen("katana")) == 0){
		return 8;
	}else if(strcmp(weapon, "chainsaw", true, strlen("chainsaw")) == 0){
		return 9;
	}else if(strcmp(weapon, "big_dildo", true, strlen("big_dildo")) == 0){
		return 10;
	}else if(strcmp(weapon, "dildo", true, strlen("dildo")) == 0){
		return 11;
	}else if(strcmp(weapon, "vibrator", true, strlen("vibrator")) == 0){
		return 12;
	}else if(strcmp(weapon, "silver_vibrator", true, strlen("silver_vibrator")) == 0){
		return 13;
	}else if(strcmp(weapon, "flower", true, strlen("flower")) == 0){
		return 14;
	}else if(strcmp(weapon, "cane", true, strlen("cane")) == 0){
		return 15;
	}else if(strcmp(weapon, "grenade", true, strlen("grenade")) == 0){
		return 16;
	}else if(strcmp(weapon, "gas", true, strlen("gas")) == 0){
		return 17;
	}else if(strcmp(weapon, "molotov", true, strlen("molotov")) == 0){
		return 18;
	}else if(strcmp(weapon, "pistol", true, strlen("pistol")) == 0){
		return 22;
	}else if(strcmp(weapon, "silenced_pistol", true, strlen("silenced_pistol")) == 0){
		return 23;
	}else if(strcmp(weapon, "deagle", true, strlen("deagle")) == 0){
		return 24;
	}else if(strcmp(weapon, "shotgun", true, strlen("shotgun")) == 0){
		return 25;
	}else if(strcmp(weapon, "sawnoff", true, strlen("sawnoff")) == 0){
		return 26;
	}else if(strcmp(weapon, "combat_shotgun", true, strlen("combat_shotgun")) == 0){
		return 27;
	}else if(strcmp(weapon, "uzi", true, strlen("uzi")) == 0){
		return 28;
	}else if(strcmp(weapon, "mp5", true, strlen("mp5")) == 0){
		return 29;
	}else if(strcmp(weapon, "ak47", true, strlen("ak47")) == 0){
		return 30;
	}else if(strcmp(weapon, "m4", true, strlen("m4")) == 0){
		return 31;
	}else if(strcmp(weapon, "tec9", true, strlen("tec9")) == 0){
		return 32;
	}else if(strcmp(weapon, "rifle", true, strlen("rifle")) == 0){
		return 33;
	}else if(strcmp(weapon, "sniper", true, strlen("sniper")) == 0){
		return 34;
	}else if(strcmp(weapon, "rpg", true, strlen("rpg")) == 0){
		return 35;
	}else if(strcmp(weapon, "hs_rpg", true, strlen("hs_rpg")) == 0){
		return 36;
	}else if(strcmp(weapon, "flamethrower", true, strlen("flamethrower")) == 0){
		return 37;
	}else if(strcmp(weapon, "minigun", true, strlen("minigun")) == 0){
		return 38;
	}else if(strcmp(weapon, "satchel", true, strlen("satchel")) == 0){
		return 39;
	}else if(strcmp(weapon, "detonator", true, strlen("detonator")) == 0){
		return 40;
	}else if(strcmp(weapon, "spraycan", true, strlen("spraycan")) == 0){
		return 41;
	}else if(strcmp(weapon, "extinguisher", true, strlen("extinguisher")) == 0){
		return 42;
	}else if(strcmp(weapon, "camera", true, strlen("camera")) == 0){
		return 43;
	}else if(strcmp(weapon, "nightvision", true, strlen("nightvision")) == 0){
		return 44;
	}else if(strcmp(weapon, "infrared", true, strlen("infrared")) == 0){
		return 45;
	}else if(strcmp(weapon, "parachute", true, strlen("parachute")) == 0){
		return 46;
	}else{
		return -1;
	}
}
