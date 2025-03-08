#> asset:artifact/1029.conviction_bone/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1029.conviction_bone/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle end_rod ~ ~1.2 ~ 0 0 0 0.6 30 normal
    particle squid_ink ~ ~ ~ 2 2 2 0 300 normal
    playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 0.8

# Object召喚
    data modify storage api: Argument.ID set value 1099
    data modify storage api: Argument.FieldOverride.Damage set value {Sword:42f,Shot:42f}
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
