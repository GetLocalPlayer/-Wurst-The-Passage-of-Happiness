//===========================================================================
// 
// Wurst Example Map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Wurst Team
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_Finish              = null
    rect                    gg_rct_Checkpoint          = null
    rect                    gg_rct_Start               = null
    rect                    gg_rct_LeftStart           = null
    rect                    gg_rct_LeftFinish          = null
    rect                    gg_rct_RightStart          = null
    rect                    gg_rct_RightFinish         = null
    rect                    gg_rct_MidStart            = null
    rect                    gg_rct_MidFinish           = null
    rect                    gg_rct_RazorStart          = null
    rect                    gg_rct_RazorFinish         = null
    rect                    gg_rct_ShieldGeneratorSpawn = null
    rect                    gg_rct_RazorActivation     = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = BlzCreateUnitWithSkin( p, 'ncp2', 2272.0, -6752.0, 270.000, 'ncp2' )
    set u = BlzCreateUnitWithSkin( p, 'ncp2', -2336.0, -2144.0, 270.000, 'ncp2' )
    set u = BlzCreateUnitWithSkin( p, 'ncp2', -6752.0, 2272.0, 270.000, 'ncp2' )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Finish = Rect( -6816.0, 2208.0, -6688.0, 2336.0 )
    set gg_rct_Checkpoint = Rect( -2432.0, -2240.0, -2240.0, -2048.0 )
    set gg_rct_Start = Rect( 2176.0, -6848.0, 2368.0, -6656.0 )
    set gg_rct_LeftStart = Rect( -7040.0, 256.0, -6912.0, 384.0 )
    set gg_rct_LeftFinish = Rect( -4096.0, -2688.0, -3968.0, -2560.0 )
    set gg_rct_RightStart = Rect( -4864.0, 2432.0, -4736.0, 2560.0 )
    set gg_rct_RightFinish = Rect( -1920.0, -512.0, -1792.0, -384.0 )
    set gg_rct_MidStart = Rect( -6144.0, 1536.0, -6016.0, 1664.0 )
    set gg_rct_MidFinish = Rect( -2944.0, -1664.0, -2816.0, -1536.0 )
    set gg_rct_RazorStart = Rect( -2048.0, -2560.0, -1920.0, -2432.0 )
    set gg_rct_RazorFinish = Rect( 1792.0, -6400.0, 1920.0, -6272.0 )
    set gg_rct_ShieldGeneratorSpawn = Rect( -3392.0, -1376.0, -3264.0, -1248.0 )
    set gg_rct_RazorActivation = Rect( -1024.0, -4544.0, -352.0, -3808.0 )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), true )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam( Player(0), 0 )

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "LordaeronSummerDay" )
    call SetAmbientNightSound( "LordaeronSummerNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateRegions(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_008" )
    call SetMapDescription( "" )
    call SetPlayers( 1 )
    call SetTeams( 1 )
    call SetGamePlacement( MAP_PLACEMENT_USE_MAP_SETTINGS )

    call DefineStartLocation( 0, 2240.0, -6784.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call SetPlayerSlotAvailable( Player(0), MAP_CONTROL_USER )
    call InitGenericPlayerSlots(  )
endfunction

