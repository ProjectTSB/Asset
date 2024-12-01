#> asset:mob/0378.red_night_v3/tick/03.axe1/main
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/skill_active

#> private
# @private
    #declare score_holder $Interval

# アニメーション変える
    execute if score @s AI.Tick matches 5 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AI.Tick matches 5 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack3/play

# 4tickおきにダメージ実行
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s AI.Tick
# 4tickおきに実行
    scoreboard players operation $Interval Temporary %= $2 Const
# 斬る
    execute if score $Interval Temporary matches 0 if score @s AI.Tick matches 21..35 run function asset:mob/0378.red_night_v3/tick/03.axe1/spin_damage
# リセット
    scoreboard players reset $Interval

# プレイヤーみる
    execute if score @s AI.Tick matches 35 if predicate api:global_vars/difficulty/min/hard facing entity @p[gamemode=!spectator] feet rotated ~ 0 run function asset:mob/0378.red_night_v3/tick/common/tp

# 地面叩く
    execute if score @s AI.Tick matches 53 positioned ^ ^ ^4 run function asset:mob/0378.red_night_v3/tick/03.axe1/explode
    execute if score @s AI.Tick matches 54 positioned ^ ^ ^5 run function asset:mob/0378.red_night_v3/tick/03.axe1/explode
    execute if score @s AI.Tick matches 55 positioned ^ ^ ^6 run function asset:mob/0378.red_night_v3/tick/03.axe1/explode

# リセット
    execute if score @s AI.Tick matches 59 run function asset:mob/0378.red_night_v3/tick/skill_reset
