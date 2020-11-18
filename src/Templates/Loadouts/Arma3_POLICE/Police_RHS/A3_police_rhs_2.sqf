comment "Exported from Arsenal by SomethingSimple";

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

/*Helmet*/
_RandomHeadgear = selectRandom [ "H_MilCap_blue", "H_Cap_police", "H_Cap_police"];
this addHeadgear _RandomHeadgear;
/*Uniform*/
this forceAddUniform "U_B_GEN_Soldier_F";
/*Vest*/
_RandomVest = selectRandom ["V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVestIR_blk", "V_TacVestIR_blk", "V_Chestrig_blk"];
this addVest _RandomVest;
/*Backpack*/

/*Weapon*/
this addWeapon "rhsusf_weap_m1911a1";
/*WeaponItem*/
this addHandgunItem "rhsusf_mag_7x45acp_MHP";

/*Items*/
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {this addItemToVest "rhsusf_mag_7x45acp_MHP";};
this addItemToUniform "ACE_Chemlight_HiBlue";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};

/*Items*/
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

private _voice = [
	"male01gre", 
	"male02gre", 
	"male03gre", 
	"male04gre", 
	"male05gre"
];

[this,"Default",selectRandom _voice] call BIS_fnc_setIdentity;