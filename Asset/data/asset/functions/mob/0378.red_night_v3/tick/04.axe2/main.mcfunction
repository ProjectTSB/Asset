#> asset:mob/0378.red_night_v3/tick/04.axe2/main
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack4/play

# イージプレイヤーを煽るような警告音
    execute if score @s AI.Tick matches 34 if predicate api:global_vars/difficulty/easy run playsound entity.arrow.hit_player hostile @a ~ ~ ~ 1 1 1
    execute if score @s AI.Tick matches 36 if predicate api:global_vars/difficulty/easy run playsound entity.arrow.hit_player hostile @a ~ ~ ~ 1 1 1
    execute if score @s AI.Tick matches 38 if predicate api:global_vars/difficulty/easy run playsound entity.arrow.hit_player hostile @a ~ ~ ~ 1 1 1

# 警告音
    execute if score @s AI.Tick matches 40 run playsound item.trident.return hostile @a ~ ~ ~ 1 1 1

# 地面ぶっ叩く
    execute if score @s AI.Tick matches 48 positioned ^ ^ ^4 run function asset:mob/0378.red_night_v3/tick/04.axe2/vfx
    execute if score @s AI.Tick matches 48 positioned ^ ^ ^4 run function asset:mob/0378.red_night_v3/tick/04.axe2/damage

# リセット
    execute if score @s AI.Tick matches 66 run function asset:mob/0378.red_night_v3/tick/skill_reset
