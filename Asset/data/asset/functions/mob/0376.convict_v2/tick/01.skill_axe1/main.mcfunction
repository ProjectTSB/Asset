#> asset:mob/0376.convict_v2/tick/01.skill_axe1/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack1/play

# プレイヤーみる
    execute if score @s General.Mob.Tick matches 0 facing entity @p[] feet run function asset:mob/0376.convict_v2/tick/common/tp

# 斬撃
    execute if score @s General.Mob.Tick matches 15 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 15 at @s run function asset:mob/0376.convict_v2/tick/common/slash1
    execute if score @s General.Mob.Tick matches 15 at @s positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/common/particle/particle_2

    execute if score @s General.Mob.Tick matches 22 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 22 at @s run function asset:mob/0376.convict_v2/tick/common/slash1
    execute if score @s General.Mob.Tick matches 22 at @s positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/common/particle/particle_2

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0376.convict_v2/tick/skill_reset
