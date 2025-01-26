#> asset:mob/0376.convict_v2/tick/05.skill_axe5/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack5/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/tp

# 斬撃
    execute if score @s General.Mob.Tick matches 11 run function asset:mob/0376.convict_v2/tick/common/slash1
    execute if score @s General.Mob.Tick matches 11 positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/common/particle/particle_2

# 突っ込む
    execute if score @s General.Mob.Tick matches 19 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/slash1
    execute if score @s General.Mob.Tick matches 19 positioned ^ ^ ^6 run function asset:mob/0376.convict_v2/tick/common/slash1

# TPする
    execute if score @s General.Mob.Tick matches 19 positioned ^ ^ ^6 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 19 at @s positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/common/particle/particle_3

    execute if score @s General.Mob.Tick matches 44 run function asset:mob/0376.convict_v2/tick/skill_reset
