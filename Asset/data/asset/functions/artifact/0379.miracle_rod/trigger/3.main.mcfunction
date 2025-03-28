#> asset:artifact/0379.miracle_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0379.miracle_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0

# Object召喚
    data modify storage api: Argument.ID set value 1093
    data modify storage api: Argument.FieldOverride.Damage set value 680f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function api:object/summon
