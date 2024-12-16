#> asset:object/1069.icicle_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1069/tick

execute positioned ^01.5 ^ ^ run function asset:object/1069.icicle_manager/tick/summon_icicle/
execute positioned ^00.0 ^ ^ run function asset:object/1069.icicle_manager/tick/summon_icicle/
execute positioned ^-1.5 ^ ^ run function asset:object/1069.icicle_manager/tick/summon_icicle/

function asset:object/super.tick
