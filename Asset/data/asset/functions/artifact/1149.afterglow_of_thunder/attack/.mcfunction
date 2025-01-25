#> asset:artifact/1149.afterglow_of_thunder/attack/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1149/attack/


# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 250
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~0.2 ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.9 2 0
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.9 0 0

# バフ
    data modify storage api: Argument.ID set value 276
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 累計スコアをリセット
    scoreboard players reset @s VX.DamageSum
