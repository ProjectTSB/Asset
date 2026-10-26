#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_clear
#
# クイズに正解されたときの処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 演出
    particle large_smoke ~ ~1.8 ~ 0 0 0 0.1 50 normal @a
    particle explosion ~ ~1.8 ~ 0 0 0 0 1
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.7 100
    playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.7 0
    playsound ogg:mob.strider.retreat5 hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2

# 自身に鈍足を付与
    effect give @s slowness 3 10 true

# 自身に割合ダメージ
    function api:mob/get_max_health
    execute store result storage api: Argument.Delta double -0.0008 run data get storage api: Return.MaxHealth 100
    function api:mob/modify_health
    function asset:mob/call.m {method:"update_bossbar"}

# クイズエンド
    function asset:mob/0059.jack_o_lantern/tick/skill/quiz/end
