#> asset:artifact/0008.mysterious_tambourine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0008.mysterious_tambourine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    tellraw @a[distance=..16] [{"text":"不思議なタンバリン","color":"yellow"},{"text":"の音が聞こえた。\n不思議と力がみなぎってくる。","color":"white"}]
    #particle minecraft:trial_spawner_detection ~ ~ ~ 1 1 1 0 100
    execute as @a positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/0008.mysterious_tambourine/trigger/vfx

# 鼓舞(ID:272)を付与
    data modify storage api: Argument.ID set value 272
    execute as @a run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
