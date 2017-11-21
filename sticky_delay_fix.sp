#pragma semicolon 1
#pragma newdecls required

#include <tf2_stocks>

#define PLUGIN_VERSION "0.1.0"

public Plugin myinfo = {
    name = "Sticky Delay Bugfix",
    author = "twiikuu",
    description = "Fix forced delay on sticky detonations when switching weapons",
    version = PLUGIN_VERSION,
    url = "https://github.com/ldesgoui/tf2-sticky-delay-fix"
};

static Handle g_Attack2 = INVALID_HANDLE;

public void OnPluginStart() {
    Handle GameData = LoadGameConfigFile("sticky_delay_fix");
    StartPrepSDKCall(SDKCall_Entity);
    if (GameData != INVALID_HANDLE) {
        PrepSDKCall_SetFromConf(GameData, SDKConf_Virtual, "SecondaryAttack");
    } else {
        PrepSDKCall_SetVirtual(286); // LINUX ASSUMED :/
    }
    g_Attack2 = EndPrepSDKCall();
    if (g_Attack2 == INVALID_HANDLE)
        LogMessage("Failed to prepare SDK call");
}

public Action OnPlayerRunCmd(int client, int &buttons, int &impulse,
        float vel[3], float angles[3], int &currWeapon, int &subtype,
        int &cmdnum, int &tickcount, int &seed, int mouse[2]) {
    int weapon, item;
    if (g_Attack2 == INVALID_HANDLE
            || !IsClientConnected(client)
            || !IsClientInGame(client)
            || !IsPlayerAlive(client)
            || TF2_GetPlayerClass(client) != TFClass_DemoMan
            || (weapon = GetPlayerWeaponSlot(client, 1)) == -1
            || (item = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex")) == -1
            || item == 131
            || item == 406
            || item == 1099
            || item == 1144
            || !(buttons & IN_ATTACK2))
        return Plugin_Continue;
    SDKCall(g_Attack2, weapon);
    return Plugin_Continue;
}

