#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_thunder
#
# 雷攻撃してくる居合
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/finisher
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_thunder

# パーティクル
    particle dust_color_transition 0.3 0.8 1 1 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 20 force @a[distance=..32]

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 眼の前が壊せなかったら移動
    execute if block ^ ^ ^1 #lib:unbreakable run return run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# 距離限界でも移動
    execute unless entity @s[distance=..16] run return run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active

# マーカー置く、ただしその辺にマーカーがなければ
    execute unless entity @e[type=marker,tag=A5.Marker.Thunder,distance=..4] run summon marker ~ ~ ~ {Tags:["A5.Marker.Thunder","A5.Marker"]}

# 通り道にいたプレイヤーにタグを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add Hit

# 周囲の壊せるブロックをぶっ壊す、ただしエリアによる
    execute if predicate api:area/is_breakable rotated ~ 0 positioned ^ ^0.2 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute if predicate api:area/is_breakable rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

# 再帰、ただし床が近くない場合
    execute if block ~ ~-0.5 ~ #asset:mob/0365.frestchika/no_collision positioned ^ ^ ^1 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_thunder

# 再帰、床が近い場合は向きを変えて
    execute unless block ~ ~-0.5 ~ #asset:mob/0365.frestchika/no_collision rotated ~ -1 positioned ^ ^ ^1 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_thunder
