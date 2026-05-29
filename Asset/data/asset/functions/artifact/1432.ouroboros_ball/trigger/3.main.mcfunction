#> asset:artifact/1432.ouroboros_ball/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1432.ouroboros_ball/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 1.0 0.6 0.0

# ここから先は神器側の効果の処理を書く

# 玉を発射
    data modify storage api: Argument.ID set value 1158
    execute store result storage api: Argument.FieldOverride.Damage float 1 run random value 380..450
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.2 ^-0.2 ^ run function api:object/summon
