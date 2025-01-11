#> asset:object/2142.louvert_soul_bomb_hard/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2142/tick

#> Tags
# @private
    #declare tag 9H.Marker.SummonPoint

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スコアが一定以上の時、ボムを設置
    execute if score @s General.Object.Tick matches 240 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] run function asset:object/2142.louvert_soul_bomb_hard/tick/cast

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
