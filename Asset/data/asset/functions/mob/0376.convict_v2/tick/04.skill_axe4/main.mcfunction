#> asset:mob/0376.convict_v2/tick/04.skill_axe4/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack4/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/tp

# 斬撃
    execute if score @s General.Mob.Tick matches 13 positioned ~ ~1 ~ rotated ~ ~20 run function asset:mob/0376.convict_v2/tick/common/particle/particle_2
    execute if score @s General.Mob.Tick matches 13 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/slash1

# 斬撃（ハードだとプレイヤー追尾）
    execute if score @s General.Mob.Tick matches 24 if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[] feet rotated ~ 0 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 24 unless predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 24 at @s positioned ~ ~1 ~ rotated ~ ~-20 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1
    execute if score @s General.Mob.Tick matches 24 at @s positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/slash1

# 斬撃（同上）
    execute if score @s General.Mob.Tick matches 32 if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[] feet rotated ~ 0 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 32 unless predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 32 at @s positioned ~ ~1.4 ~ positioned ^ ^ ^2 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 32 at @s positioned ^ ^ ^1.5 run function asset:mob/0376.convict_v2/tick/common/slash1

# リセット
    execute if score @s General.Mob.Tick matches 51 run function asset:mob/0376.convict_v2/tick/skill_reset
