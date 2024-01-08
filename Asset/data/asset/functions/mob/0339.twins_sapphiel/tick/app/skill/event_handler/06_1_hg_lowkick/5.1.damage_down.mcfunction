#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/5.1.damage_down
#
# アニメーションのイベントハンドラ Hg回し蹴り ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# 着地
    function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land

# 移動速度低下
    effect give @s slowness 3 10 true

# ブロック設置
    execute at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ barrier
    data modify storage api: Argument.ID set value 352
    function api:mob/summon
