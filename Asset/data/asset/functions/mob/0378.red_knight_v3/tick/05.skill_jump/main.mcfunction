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
    execute if score @s AI.Tick matches 20 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_fallstab_windup/play

    execute if score @s AI.Tick matches 20 run function asset:mob/0378.red_knight_v3/tick/05.skill_jump/jump
# このあと落下してるはず
    execute if score @s AI.Tick matches 30..200 run function asset:mob/0378.red_knight_v3/tick/05.skill_jump/falling

# もし異常な距離すすんでも着地しない場合
    execute if score @s AI.Tick matches 200 run function asset:mob/0378.red_knight_v3/tick/skill_reset


# 着地時の処理
    execute if score @s AI.Tick matches 1000 run function asset:mob/0378.red_knight_v3/tick/05.skill_jump/landing

# リセット
    execute if score @s AI.Tick matches 1025 run function asset:mob/0378.red_knight_v3/tick/skill_reset
