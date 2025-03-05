#> asset:mob/0301.karmic/tick/03_0.gun/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/guntpstart/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0301.karmic/tick/common/tp

# 攻撃
    execute if score @s General.Mob.Tick matches 18 run say shot
    execute if score @s General.Mob.Tick matches 20 run say shot
    execute if score @s General.Mob.Tick matches 24 run say shot

# 次の攻撃に移行する
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0301.karmic/tick/03_0.gun/end
