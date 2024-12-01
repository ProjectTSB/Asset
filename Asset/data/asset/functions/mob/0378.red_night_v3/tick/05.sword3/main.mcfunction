#> asset:mob/0378.red_night_v3/tick/05.sword3/main
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack5/play

    execute if score @s AI.Tick matches 11 positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AI.Hit
    execute if score @s AI.Tick matches 11 positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AI.Hit
    execute if score @s AI.Tick matches 11 positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AI.Hit
    execute if score @s AI.Tick matches 11 positioned ^ ^ ^4 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AI.Hit
    execute if score @s AI.Tick matches 11 run function asset:mob/0378.red_night_v3/tick/05.sword3/damage
    execute if score @s AI.Tick matches 11 positioned ^ ^ ^5 run function asset:mob/0378.red_night_v3/tick/common/tp


# リセット
    execute if score @s AI.Tick matches 32 run function asset:mob/0378.red_night_v3/tick/skill_reset
