#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/
#
#
#
# @within function
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot

# パーティクル
    particle minecraft:dust_color_transition 1 1 1 0.4 1 1 0 ^ ^ ^ 0.07 0.07 0.07 0 1 force @a[distance=..32]
    particle minecraft:dust_color_transition 1 1 1 0.4 1 1 0 ^ ^ ^0.5 0.07 0.07 0.07 0 1 force @a[distance=..32]
    particle minecraft:dust_color_transition 1 1 1 0.4 1 1 0 ^ ^ ^-0.5 0.07 0.07 0.07 0 1 force @a[distance=..32]

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/hit

# 壁ヒットで炸裂
    execute unless block ^ ^ ^1 #lib:no_collision/ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/hit

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision/ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/
