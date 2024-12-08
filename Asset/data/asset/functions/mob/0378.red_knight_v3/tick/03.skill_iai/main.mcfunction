#> asset:mob/0378.red_knight_v3/tick/03.skill_iai/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_melee_3/play

# パーティクル
    execute if score @s AI.Tick matches 10..25 run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0 5 force @a[distance=..20]

# ダメージを受けたら即座に発動
    execute if score @s[nbt={HurtTime:9s}] AI.Tick matches 10..24 run function asset:mob/0378.red_knight_v3/tick/03.skill_iai/immediate

# プレイヤーみる
    execute if score @s AI.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0378.red_knight_v3/tick/common/tp

# 発動
    execute if score @s AI.Tick matches 25 run function asset:mob/0378.red_knight_v3/tick/03.skill_iai/damage
# パーティクル
    execute if score @s AI.Tick matches 25 rotated ~ 0 rotated ~90 ~-15 positioned ~ ~1.5 ~ run function asset:mob/0378.red_knight_v3/tick/03.skill_iai/vfx
    execute if score @s AI.Tick matches 25 rotated ~ 0 rotated ~90 ~15 positioned ~ ~1.5 ~ run function asset:mob/0378.red_knight_v3/tick/03.skill_iai/vfx

# リセット
    execute if score @s AI.Tick matches 58 run function asset:mob/0378.red_knight_v3/tick/skill_reset
