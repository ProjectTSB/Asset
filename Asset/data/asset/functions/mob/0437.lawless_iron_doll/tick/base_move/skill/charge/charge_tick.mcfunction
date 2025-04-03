#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick
#
# 突進中の処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 近くのプレイヤーの方にゆっくりと向き直る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# レーザー攻撃
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.5
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.6
    scoreboard players reset $Interval Temporary

# まっすぐ前に歩く
    execute rotated ~ 0 run tp @s ^ ^ ^1
