#> asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick
#
# 歩行周りの処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 歩行をスタートする際に一回だけ実行される
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/start

# 近くのプレイヤーの方にゆっくりと向き直る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 足音
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.5
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.6
    scoreboard players reset $Interval Temporary

# まっすぐ前に歩く
    execute rotated ~ 0 run tp @s ^ ^ ^0.2
