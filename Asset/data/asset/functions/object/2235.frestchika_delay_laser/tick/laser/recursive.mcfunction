#> asset:object/2235.frestchika_delay_laser/tick/laser/recursive
#
# 再帰レーザー
#
# @within function
#   asset:object/2235.frestchika_delay_laser/tick/laser/recursive
#   asset:object/2235.frestchika_delay_laser/tick/laser/shoot


# パーティクル
    particle dust_color_transition 0 0.75 1 0.5 0.3 1 1 ^ ^ ^ 0.07 0.07 0.07 0 1 force @a[distance=..32]
    particle dust_color_transition 0 0.75 1 0.5 0.3 1 1 ^ ^ ^0.5 0.07 0.07 0.07 0 1 force @a[distance=..32]
    particle dust_color_transition 0 0.75 1 0.5 0.3 1 1 ^ ^ ^-0.5 0.07 0.07 0.07 0 1 force @a[distance=..32]

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:object/2235.frestchika_delay_laser/tick/laser/hit

# 壁ヒットで炸裂
#    execute unless block ^ ^ ^1 #asset:mob/0365.frestchika/no_collision run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/hit

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0365.frestchika/no_collision run function asset:object/2235.frestchika_delay_laser/tick/laser/recursive
