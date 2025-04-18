#> asset:object/2174.heiloang_death_animation/tick/summon_bossdrop.m
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/summon_bossdrop

# ボスドロップ配置
    $execute positioned $(X) $(Y) $(Z) run particle end_rod ~ ~0.5 ~ 0 0 0 0.1 50
    $execute positioned $(X) $(Y) $(Z) run playsound block.enchantment_table.use hostile @a ~ ~ ~ 1 1
    data modify storage api: Argument.ID set value 1269
    data modify storage api: Argument.Important set value true
    $execute positioned $(X) $(Y) $(Z) positioned ~ ~0.5 ~ run function api:artifact/spawn/from_id
