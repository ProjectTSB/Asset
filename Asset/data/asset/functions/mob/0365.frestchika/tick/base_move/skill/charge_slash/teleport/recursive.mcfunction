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

# 床でも移動
    execute unless block ~ ~-0.1 ~ #lib:no_collision run return run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# 周囲の壊せるブロックをぶっ壊す
    execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

# 再帰
    execute positioned ^ ^ ^1 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
