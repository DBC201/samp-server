#define FILTERSCRIPT

#include <a_samp>

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("Las Venturas Airport by dbc201");
	print("--------------------------------------\n");
	AddStaticVehicle(520,1636.0569,1541.9298,11.5163,35.9742,0,0); // hydra la entrance 2
	AddStaticVehicle(520,1653.0381,1549.3988,11.5121,33.6086,0,0); // hydra la entrance 1
	AddStaticVehicle(520,1622.4768,1534.8612,11.5200,23.5571,0,0); // la hydra entrance 3
	AddStaticVehicle(592,1530.8219,1830.8209,12.0144,179.6115,1,1); // andromeda corner 1
	AddStaticVehicle(592,1528.1974,1750.4498,12.0147,180.1389,1,1); // andro 2
	AddStaticVehicle(553,1532.4535,1677.4481,12.1530,168.7369,55,23); // nevada 1
	AddStaticVehicle(513,1279.1150,1362.2273,11.3777,270.5333,54,34); // stunt 1
	AddStaticVehicle(476,1331.4924,1598.8613,11.5464,275.4274,7,6); // rustler 1
	AddStaticVehicle(593,1332.8700,1581.5764,11.2842,270.9406,60,1); // dodo 2
	AddStaticVehicle(432,1601.1494,1189.9882,10.8209,0.4848,43,0); // Airport rhino 1
	AddStaticVehicle(593,1332.8866,1562.3512,11.2823,272.5878,60,1); // dodo 1
	AddStaticVehicle(476,1332.3124,1597.6210,11.5240,270.8400,7,6); // rustler 2
	AddStaticVehicle(476,1331.9878,1613.5271,11.5308,268.3020,119,117); // rustler 3
	AddStaticVehicle(511,1339.0728,1682.9849,12.1895,268.4341,4,90); // beagle 1
	AddStaticVehicle(512,1329.3558,1735.8141,11.1028,267.1283,15,123); // crop 1
	AddStaticVehicle(519,1566.1251,1413.0791,11.7601,126.3954,1,1); // shamal 1
	AddStaticVehicle(519,1567.9838,1481.5747,11.7470,41.2428,1,1); // shamal 2
	AddStaticVehicle(485,1293.6919,1562.8262,10.4800,269.7784,1,74); // airport car
	AddStaticVehicle(437,1284.6677,1287.7295,10.9536,270.4298,79,7); // bus 1
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}


