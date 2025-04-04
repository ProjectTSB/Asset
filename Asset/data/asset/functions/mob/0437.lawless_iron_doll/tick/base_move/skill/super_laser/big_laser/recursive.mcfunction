#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive
#
# 再帰レーザー
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/shoot

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/hit

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0365.frestchika/no_collision run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive
