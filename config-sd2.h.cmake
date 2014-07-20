/* Copyright (C) 2006 - 2013 ScriptDev2 <http://www.scriptdev2.com/>
 * This program is free software licensed under GPL version 2
 * Please see the included DOCS/LICENSE.TXT for more information */

#ifndef SC_CONFIG_H
#define SC_CONFIG_H

#include "Platform/CompilerDefs.h"
#include "revision.h"
#include "sd2_revision_nr.h"

// Format is YYYYMMDDRR where RR is the change in the conf file
// for that day.
#define SD2_CONF_VERSION    2010062001

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
