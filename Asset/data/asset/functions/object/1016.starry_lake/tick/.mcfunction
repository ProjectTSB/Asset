#> asset:object/1016.starry_lake/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1016/tick

# 星っぽい演出
    particle end_rod ~ ~2 ~ 3.2 1.4 3.2 0 2 normal @a

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 一定間隔での処理
    scoreboard players operation $Interval Temporary %= $20 Const

# 波の演出&ターゲット設定
    execute if score $Interval Temporary matches 0 run function asset:object/1016.starry_lake/tick/wave/1
    execute if score $Interval Temporary matches 1 run function asset:object/1016.starry_lake/tick/wave/2
    execute if score $Interval Temporary matches 2 run function asset:object/1016.starry_lake/tick/wave/3
    execute if score $Interval Temporary matches 3 run function asset:object/1016.starry_lake/tick/wave/4
    execute if score $Interval Temporary matches 4 run function asset:object/1016.starry_lake/tick/wave/5
    execute if score $Interval Temporary matches 5 run function asset:object/1016.starry_lake/tick/wave/6
    execute if score $Interval Temporary matches 6 run function asset:object/1016.starry_lake/tick/wave/7
    execute if score $Interval Temporary matches 7 run function asset:object/1016.starry_lake/tick/wave/8
    execute if score $Interval Temporary matches 8 run function asset:object/1016.starry_lake/tick/wave/9
    execute if score $Interval Temporary matches 9 run function asset:object/1016.starry_lake/tick/wave/10
    execute if score $Interval Temporary matches 10 run function asset:object/1016.starry_lake/tick/wave/11
    execute if score $Interval Temporary matches 11 run function asset:object/1016.starry_lake/tick/wave/12
    execute if score $Interval Temporary matches 12 run function asset:object/1016.starry_lake/tick/wave/13
    execute if score $Interval Temporary matches 13 run function asset:object/1016.starry_lake/tick/wave/14
    execute if score $Interval Temporary matches 14 run function asset:object/1016.starry_lake/tick/wave/15
    execute if score $Interval Temporary matches 15 run function asset:object/1016.starry_lake/tick/wave/16

# $Intervalが0の時に、エリア全体にいるプレイヤーにバフを掛ける
    execute if score $Interval Temporary matches 0 as @a[distance=..7.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run function asset:object/1016.starry_lake/tick/buff

# 0の時に重複ヒット判定をリセット
    execute if score $Interval Temporary matches 0 run function asset:object/call.m {method:"reset_duplicate_protection"}

# $Intervalが1~15の時に敵にダメージ
    execute if score $Interval Temporary matches 1..15 run function asset:object/1016.starry_lake/tick/damage/

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 一定間隔での処理
    scoreboard players operation $Interval Temporary %= $14 Const

# $Intervalが0のときに波紋を発生させる
    execute if score $Interval Temporary matches 0 run function asset:object/1016.starry_lake/tick/ripple/set_pos

# リセット
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
