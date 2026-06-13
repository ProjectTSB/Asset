#> asset:object/2287.sharkboss_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2287/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# アニメーション制御
    execute if score @s General.Object.Tick matches 1 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/death/tween {duration:1, to_frame: 0}
    #execute if score @s General.Object.Tick matches 120 run function asset:mob/0445.sharkboss/tick/action/utility/end
# AJエンティティの削除
    execute if score @s General.Object.Tick matches 121 run function animated_java:sharkboss/remove/all
# 消滅処理
    kill @s[scores={General.Object.Tick=121..}]
