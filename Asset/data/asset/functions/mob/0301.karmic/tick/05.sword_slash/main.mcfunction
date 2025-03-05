#> asset:mob/0301.karmic/tick/05.sword_slash/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_attack1/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator] feet run function asset:mob/0301.karmic/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 19 run say slash
    execute if score @s General.Mob.Tick matches 28 run say slash

# 終わり
    execute if score @s General.Mob.Tick matches 42 run function asset:mob/0301.karmic/tick/05.sword_slash/end
