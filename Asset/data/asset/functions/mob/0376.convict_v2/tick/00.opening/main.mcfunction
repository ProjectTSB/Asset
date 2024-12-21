#> asset:mob/0376.convict_v2/tick/00.opening/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/summon/play

# 演出
    execute if score @s General.Mob.Tick matches 17 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
    execute if score @s General.Mob.Tick matches 47 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
# リセット
    execute if score @s General.Mob.Tick matches 64 run function asset:mob/0376.convict_v2/tick/skill_reset
