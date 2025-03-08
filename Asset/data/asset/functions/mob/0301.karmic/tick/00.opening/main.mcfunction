#> asset:mob/0301.karmic/tick/00.opening/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/summon/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0301.karmic/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 17 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
    execute if score @s General.Mob.Tick matches 47 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
# リセット
    execute if score @s General.Mob.Tick matches 64 run function asset:mob/0301.karmic/tick/skill_reset
