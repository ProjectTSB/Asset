#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.3.damage_down
#
# アニメーションのイベントハンドラ Kt大外刈り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.2.damage_throw

# 移動
    tp @s ~ ~ ~ ~90 ~
    tp @s @s

# 着地
    function asset:mob/0340.twins_rubiel/app/general/6.teleport_to_land

# 移動速度低下
    # effect give @s slowness 3 10 true
    data modify storage api: Argument set value {ID:67,Duration:60,Stack:20}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    execute at @s anchored eyes run particle explosion ~ ~0.5 ~ 0 0 0 0 1
    execute at @s anchored eyes run particle cloud ~ ~0.5 ~ 0 0 0 0.2 20

# 転倒演出
    data modify storage api: Argument.ID set value 2196
    execute at @s run function api:object/summon
    # execute at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ barrier
    # data modify storage api: Argument.ID set value 352
    # execute at @s run function api:mob/summon

# 計算用AEC召喚
    execute positioned as @s run summon area_effect_cloud ^ ^ ^-0.5 {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","9G.Temp.Target.Aec.0"]}
