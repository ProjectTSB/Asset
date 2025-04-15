#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.end_portal.spawn neutral @a ~ ~ ~ 0.3 1.4 0
    particle end_rod ~ ~1.2 ~ 0 0 0 0.4 150 normal @a

# 弾を召喚
    data modify storage api: Argument.ID set value 1016
    data modify storage api: Argument.FieldOverride.Damage set value {Lake:250,Ripple:500}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~0.1 ~ run function api:object/summon
