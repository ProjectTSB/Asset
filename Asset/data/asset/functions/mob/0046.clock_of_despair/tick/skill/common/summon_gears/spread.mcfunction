#> asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/spread
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/*

#> Val
# @private
#declare score_holder $Continuation

# 前回のデータがある場合に備えてリセット
    scoreboard players reset $Continuation Temporary
# (再)拡散
    data modify storage lib: Argument.Bounds set value [[14,14],[0,0],[14,14]]
    function lib:spread_entity/
# いい感じに再拡散する
    execute at @s if entity @e[type=zombie,tag=this,distance=10..20,limit=1] run scoreboard players set $Continuation Temporary 1
    execute at @s if entity @e[type=marker,tag=1A.GearMarker,distance=0.01..5] run scoreboard players set $Continuation Temporary 1
    execute if score $Continuation Temporary matches 1 run function asset:mob/0046.clock_of_despair/tick/skill/common/summon_gears/spread
