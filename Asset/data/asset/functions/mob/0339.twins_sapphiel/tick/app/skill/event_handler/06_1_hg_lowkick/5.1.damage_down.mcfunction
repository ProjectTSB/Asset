#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/5.1.damage_down
#
# アニメーションのイベントハンドラ Hg回し蹴り ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# 移動
    tp @s ~ ~ ~ ~90 ~
    tp @s @s

# 着地
    function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land

# 移動速度低下
    data modify storage api: Argument set value {ID:67,Duration:60,Stack:20}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
    # effect give @s slowness 3 10 true

# 転倒演出
    data modify storage api: Argument.ID set value 2196
    execute at @s run function api:object/summon
    # execute at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ barrier
    # data modify storage api: Argument.ID set value 352
    # function api:mob/summon

# 計算用AEC召喚
    execute positioned as @s run summon area_effect_cloud ^ ^ ^-0.5 {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","9F.Temp.Target.Aec.0"]}
