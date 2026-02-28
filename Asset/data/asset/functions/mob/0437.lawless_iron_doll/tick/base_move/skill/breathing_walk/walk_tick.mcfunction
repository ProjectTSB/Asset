#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/breathing_walk/walk_tick
#
# 歩行処理。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/breathing_walk/tick

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 近くのプレイヤーの方にゆっくりと向き直る
    execute facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 6tickごとに足音
    scoreboard players operation $Interval Temporary %= $20 Const
# 下に何かあるなら、ゴツンゴツン
    execute if score $Interval Temporary matches 0 unless block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.5
    execute if score $Interval Temporary matches 0 unless block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.6
# 下に何もないなら、キラキラ
    execute if score $Interval Temporary matches 0 if block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:block.amethyst_block.place hostile @a ~ ~ ~ 2 0.5
    execute if score $Interval Temporary matches 0 if block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 2 1
# リセット
    scoreboard players reset $Interval Temporary

# そこらのプレイヤーより上にいる場合、下にTP。下にブロックがあったら止まるよ。
    function asset:mob/0437.lawless_iron_doll/tick/base_move/common/descend_when_all_player_below

# 足元が埋まっていて、上にブロックがないなら上に移動
    execute unless block ^ ^ ^1 #lib:no_collision run tp @s ~ ~0.1 ~

# まっすぐ前に歩く
    execute at @s run tp @s ^ ^ ^0.1 ~ 0
