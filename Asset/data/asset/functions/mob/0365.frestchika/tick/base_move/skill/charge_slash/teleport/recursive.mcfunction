#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive

# パーティクル
    particle dust_color_transition 0.3 0.8 1 1 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 20 force @a[distance=..32]

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 眼の前が壊せなかったら移動
    execute if block ^ ^ ^1 #lib:unbreakable run return run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# 距離限界でも移動
    execute unless entity @s[distance=..16] run return run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# 通り道にいたプレイヤーにタグを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add Hit

# 周囲の壊せるブロックをぶっ壊す
    execute rotated ~ 0 positioned ^ ^0.2 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

# 再帰、ただし床が近くない場合
    execute if block ~ ~-0.5 ~ #asset:mob/0365.frestchika/no_collision positioned ^ ^ ^1 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive

# 再帰、床が近い場合は向きを変えて
    execute unless block ~ ~-0.5 ~ #asset:mob/0365.frestchika/no_collision rotated ~ -1 positioned ^ ^ ^1 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
