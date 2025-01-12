#> asset:mob/0377.grey_guardian_v2/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/377/death

function asset:mob/super.death

# アニメーション変える
    execute at @s as @e[type=item_display,tag=AH.AJ,distance=..0.1,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/pause_all
    execute at @s as @e[type=item_display,tag=AH.AJ,distance=..0.1,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/dead/play

# オブジェクト
    data modify storage api: Argument.ID set value 2118
    execute at @s run function api:object/summon
