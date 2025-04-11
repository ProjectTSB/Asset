#> asset:mob/0301.karmic/tick/04.sword_change/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_change/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 14 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 終わり
    execute if score @s General.Mob.Tick matches 37 run function asset:mob/0301.karmic/tick/04.sword_change/end
