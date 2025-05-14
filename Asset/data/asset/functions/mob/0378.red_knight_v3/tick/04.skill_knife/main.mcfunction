#> asset:mob/0378.red_knight_v3/tick/04.skill_knife/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_projectile_1/play

# プレイヤーみる
    execute if score @s AI.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0378.red_knight_v3/tick/common/tp


# 演出
    execute if score @s AI.Tick matches 0 run playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 2 2
    execute if score @s AI.Tick matches 0 run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 1.5

# 後ろに飛ぶ
    execute if score @s AI.Tick matches 1 rotated ~ -10 positioned ~ ~2 ~ positioned ^ ^ ^-3 if block ~ ~ ~ #lib:no_collision run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 2 rotated ~ 6 positioned ~ ~1 ~ positioned ^ ^ ^-2 if block ~ ~ ~ #lib:no_collision run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 3 rotated ~ 3 positioned ~ ~0.1 ~ positioned ^ ^ ^-1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 4..16 rotated ~ -0 positioned ~ ~0 ~ positioned ^ ^ ^-0.25 if block ~ ~ ~ #lib:no_collision run function asset:mob/0378.red_knight_v3/tick/common/tp

# 演出
    execute if score @s AI.Tick matches 16 run playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6

# 発動
    execute if score @s AI.Tick matches 16 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/summon_knife
    execute if score @s AI.Tick matches 16 positioned ~ ~1 ~ rotated ~45 ~ run function asset:mob/0378.red_knight_v3/tick/common/summon_knife
    execute if score @s AI.Tick matches 16 positioned ~ ~1 ~ rotated ~-45 ~ run function asset:mob/0378.red_knight_v3/tick/common/summon_knife
    execute if score @s AI.Tick matches 16 if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~1 ~ rotated ~90 ~ run function asset:mob/0378.red_knight_v3/tick/common/summon_knife
    execute if score @s AI.Tick matches 16 if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~1 ~ rotated ~-90 ~ run function asset:mob/0378.red_knight_v3/tick/common/summon_knife

    execute if score @s AI.Tick matches 54 run function asset:mob/0378.red_knight_v3/tick/skill_reset
