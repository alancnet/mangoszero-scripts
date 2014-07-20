/* Copyright (C) 2006 - 2013 ScriptDev2 <http://www.scriptdev2.com/>
* This program is free software licensed under GPL version 2
* Please see the included DOCS/LICENSE.TXT for more information */

#ifndef SC_PRECOMPILED_H
#define SC_PRECOMPILED_H

#include "Object.h"
#include "Unit.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "GameObject.h"
#include "SpellAuras.h"
#include "ScriptDevMgr.h"
#include "sc_creature.h"
#include "sc_gossip.h"
#include "sc_grid_searchers.h"
#include "sc_instance.h"

#ifdef WIN32
#  include <windows.h>
BOOL APIENTRY DllMain(HANDLE hModule, DWORD ul_reason_for_call, LPVOID lpReserved)
{
    return true;
}
#endif

// sc_gossip.h:             ADD_GOSSIP_ITEM_EXTENDED outcommented box-money (Required until professions are fixed)
// sc_creature.cpp:         Used in ScriptedAI::SelectSpell, outcommented SchoolMask

#endif
