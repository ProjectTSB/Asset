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
    execute facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 10tickごとに処理を実行
    scoreboard players operation $Interval Temporary %= $10 Const
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

# 足元の先が埋まっているなら、上に移動
    execute rotated ~ 0 unless block ^ ^ ^1 #lib:no_collision run tp @s ~ ~0.1 ~

# まっすぐ前に歩く
    execute at @s run tp @s ^ ^ ^0.2 ~ 0
