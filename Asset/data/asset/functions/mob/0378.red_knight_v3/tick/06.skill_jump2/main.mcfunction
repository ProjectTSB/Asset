#> asset:mob/0378.red_knight_v3/tick/06.skill_jump2/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_air/play



# 上昇
    execute if score @s AI.Tick matches 0..100 run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 5
    execute if score @s AI.Tick matches 0..2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 2..8 positioned ~ ~0.5 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 8..16 positioned ~ ~0.05 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 16..20 positioned ~ ~0.025 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp

# でっかい攻撃範囲を地面に投影する
    execute if score @s AI.Tick matches 20..100 rotated ~ 0 run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/search_ground

# 落下開始
    execute if score @s AI.Tick matches 100 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6

# 落下中
    execute if score @s AI.Tick matches 100..200 run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/falling

# フィニッシュ
    execute if score @s AI.Tick matches 200 run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/landing


# リセット
    execute if score @s AI.Tick matches 200 run function asset:mob/0378.red_knight_v3/tick/skill_reset
