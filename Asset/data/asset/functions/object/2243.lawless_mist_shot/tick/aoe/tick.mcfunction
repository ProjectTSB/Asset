#> asset:object/2243.lawless_mist_shot/tick/aoe/tick
#
#
#
# @within function asset:object/2243.lawless_mist_shot/tick/

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# 見た目
    particle minecraft:enchant ~ ~ ~ 1 1 1 0 1 force @a[distance=..32]
    particle minecraft:dust 0.5 0 1 2 ~ ~ ~ 2.5 2.5 2.5 0 10 force @a[distance=..32]
    particle minecraft:dust 0.2 0 0.3 1 ~ ~ ~ 1 1 1 0 10 force @a[distance=..32]
    particle minecraft:portal ~ ~ ~ 0 0 0 2 10

# 図形
    execute rotated 0 0 run function asset:object/2243.lawless_mist_shot/tick/aoe/shape
    execute rotated 0 90 run function asset:object/2243.lawless_mist_shot/tick/aoe/shape
    execute rotated 90 90 run function asset:object/2243.lawless_mist_shot/tick/aoe/shape

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数tickごとに攻撃判定が発生
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 if entity @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s as @a[distance=..5] run function asset:object/2243.lawless_mist_shot/tick/aoe/damage

# リセット
    scoreboard players reset $Interval Temporary
