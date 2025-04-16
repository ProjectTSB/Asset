#> asset:object/2174.heiloang_death_animation/tick/summon_bossdrop.m
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/summon_bossdrop

# ボスドロップ配置
    data modify storage api: Argument.ID set value 1269
    data modify storage api: Argument.Important set value true
    $execute positioned $(X) $(Y) $(Z) run function api:artifact/spawn/from_id
