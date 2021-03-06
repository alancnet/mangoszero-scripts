/**
 * ScriptDev2 is an extension for mangos-zero providing enhanced features for
 * area triggers, creatures, game objects, instances, items, and spells beyond
 * the default database scripting.
 *
 * Copyright (C) 2006-2013  ScriptDev2 <http://www.scriptdev2.com/>
 * Parts Copyright (C) 2014  MaNGOS project  <http://getmangos.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * World of Warcraft, and all World of Warcraft or Warcraft art, images,
 * and lore are copyrighted by Blizzard Entertainment, Inc.
 */

#ifndef SC_CONFIG_H
#define SC_CONFIG_H

#include "platform/CompilerDefs.h"
#include "revision.h"
#include "sd2_revision_nr.h"

// Format is YYYYMMDDRR where RR is the change in the conf file
// for that day.
#define SD2_CONF_VERSION    ${SCRIPTDEV2_VERSION}

#ifdef WIN32
  #define MANGOS_DLL_EXPORT extern "C" __declspec(dllexport)
#elif defined( __GNUC__ )
  #define MANGOS_DLL_EXPORT extern "C"
#else
  #define MANGOS_DLL_EXPORT extern "C" export
#endif

#ifndef _VERSION
  #define _VERSION "Revision [" SD2_REVISION_NR "] (" REVISION_ID ") " REVISION_DATE " " REVISION_TIME
#endif

// The path to config files
#ifndef SYSCONFDIR
  #define SYSCONFDIR "${CONF_DIR}/"
#endif

#if PLATFORM == PLATFORM_WINDOWS
  #ifdef _WIN64
    #define _FULLVERSION _VERSION " (Win64)"
  #else
    #define _FULLVERSION _VERSION " (Win32)"
  #endif
  #define _SCRIPTDEV2_CONFIG  "scriptdev2.conf"
#else
  #define _FULLVERSION _VERSION " (Unix)"
  #define _SCRIPTDEV2_CONFIG  SYSCONFDIR"scriptdev2.conf"
#endif

#endif
