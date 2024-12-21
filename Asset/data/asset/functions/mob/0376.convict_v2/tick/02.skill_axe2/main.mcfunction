#> asset:mob/0376.convict_v2/tick/02.skill_axe2/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack2/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/tp

# 斬撃
    execute if score @s General.Mob.Tick matches 22 run function asset:mob/0376.convict_v2/tick/common/slash2

    execute if score @s General.Mob.Tick matches 22 positioned ~ ~1 ~ rotated ~ ~10 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 23 positioned ~ ~1 ~ rotated ~90 ~10 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 24 positioned ~ ~1 ~ rotated ~180 ~10 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 25 positioned ~ ~1 ~ rotated ~270 ~10 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3


    execute if score @s General.Mob.Tick matches 38 positioned ~ ~1 ~ rotated ~ ~ positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1
    execute if score @s General.Mob.Tick matches 38 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/main


# リセット
    execute if score @s General.Mob.Tick matches 69 run function asset:mob/0376.convict_v2/tick/skill_reset
