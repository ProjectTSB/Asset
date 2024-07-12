#> asset:mob/0265.dark_familiar/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0265.dark_familiar/_/tick

#> Private
# @private
    #declare score_holder $Interval

# パーティクル
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0 0.6 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0.3 0.6 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

# 範囲内ならホーミングじみた移動
    execute facing entity @e[type=zombie,scores={MobID=264},distance=..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 近くにサモナーがいないのであれば、プレイヤーに突っ込んでくる
    execute unless entity @e[type=zombie,scores={MobID=264},distance=..30] facing entity @p[distance=..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 接地で上を向く
    execute positioned ~ ~1.68 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1.68 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# スコア
    scoreboard players add @s 7D.Tick 1

# 消える
    execute if entity @s[scores={7D.Tick=200..}] run function asset:mob/0265.dark_familiar/tick/kill

# 一定間隔で攻撃 召喚してすぐは攻撃しないようにしている
    scoreboard players operation $Interval Temporary = @s 7D.Tick
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0265.dark_familiar/tick/shoot
    scoreboard players reset $Interval Temporary
