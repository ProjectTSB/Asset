#> asset:mob/0378.red_knight_v3/tick/05.skill_jump/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_rising_slash/play

# プレイヤーみる
    execute if score @s AI.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0378.red_knight_v3/tick/common/tp

# 発動
    execute if score @s AI.Tick matches 20 run say aa
    execute if score @s AI.Tick matches 20 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_fallstab_windup/play

    execute if score @s AI.Tick matches 20..30 positioned ~ ~0.5 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp

    execute if score @s AI.Tick matches 30 run say aa

# このあと落下してるはず
    execute if score @s AI.Tick matches 30.. positioned ~ ~-0.5 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
# 着地したら処理
    execute if score @s AI.Tick matches 30.. at @s unless block ~ ~-0.3 ~ #lib:no_collision run scoreboard players set @s AI.Tick 1000

# もし異常な距離すすんでも着地しない場合
    execute if score @s AI.Tick matches 200.. run function asset:mob/0378.red_knight_v3/tick/skill_reset


# 着地時の処理
    execute if score @s AI.Tick matches 1000 at @s as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_fallstab_landing/play
# 着地発破
    execute if score @s AI.Tick matches 1000 run say a

# リセット
    execute if score @s AI.Tick matches 1025 run function asset:mob/0378.red_knight_v3/tick/skill_reset
