#> asset:mob/0376.convict_v2/tick/03.skill_axe3/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack3/play
    execute if score @s General.Mob.Tick matches 0 facing entity @p[] feet run function asset:mob/0376.convict_v2/tick/common/tp

    execute if score @s General.Mob.Tick matches 21 run playsound item.trident.return hostile @a ~ ~ ~ 1 0
    execute if score @s General.Mob.Tick matches 38 rotated ~ 0 positioned ^ ^ ^2.3 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 39 rotated ~ 0 positioned ^ ^ ^4.6 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 40 rotated ~ 0 positioned ^ ^ ^6.9 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 41 rotated ~ 0 positioned ^ ^ ^9.2 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 42 rotated ~ 0 positioned ^ ^ ^11.5 run function asset:mob/0376.convict_v2/tick/common/explode

# ハード行動、3way
    execute if score @s General.Mob.Tick matches 38 if predicate api:global_vars/difficulty/min/3_blessless rotated ~25 0 positioned ^ ^ ^2.3 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 39 if predicate api:global_vars/difficulty/min/3_blessless rotated ~25 0 positioned ^ ^ ^4.6 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~25 0 positioned ^ ^ ^6.9 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 41 if predicate api:global_vars/difficulty/min/3_blessless rotated ~25 0 positioned ^ ^ ^9.2 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 42 if predicate api:global_vars/difficulty/min/3_blessless rotated ~25 0 positioned ^ ^ ^11.5 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 38 if predicate api:global_vars/difficulty/min/3_blessless rotated ~-25 0 positioned ^ ^ ^2.3 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 39 if predicate api:global_vars/difficulty/min/3_blessless rotated ~-25 0 positioned ^ ^ ^4.6 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~-25 0 positioned ^ ^ ^6.9 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 41 if predicate api:global_vars/difficulty/min/3_blessless rotated ~-25 0 positioned ^ ^ ^9.2 run function asset:mob/0376.convict_v2/tick/common/explode
    execute if score @s General.Mob.Tick matches 42 if predicate api:global_vars/difficulty/min/3_blessless rotated ~-25 0 positioned ^ ^ ^11.5 run function asset:mob/0376.convict_v2/tick/common/explode


    execute if score @s General.Mob.Tick matches 58 run function asset:mob/0376.convict_v2/tick/skill_reset
