#> asset:artifact/1149.afterglow_of_thunder/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1149.afterglow_of_thunder/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

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
