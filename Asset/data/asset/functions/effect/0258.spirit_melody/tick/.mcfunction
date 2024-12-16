#> asset:effect/0258.spirit_melody/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0258.spirit_melody/_/tick

#> Private
# @private
    #declare score_holder $Interval

# 2tick間隔で実行
    scoreboard players operation $Interval Temporary = @s 258.Tick
    scoreboard players operation $Interval Temporary %= $1 Const
    execute if score $Interval Temporary matches 0 store result storage asset:temp 258.Tick int 1 run scoreboard players get @s 258.Tick
    execute if score $Interval Temporary matches 0 run execute if score $Interval Temporary matches 0 run function asset:effect/0258.spirit_melody/tick/note/.m with storage asset:temp 258
    execute if score $Interval Temporary matches 0 run data remove storage asset:temp 258
    scoreboard players reset $Interval Temporary

# スコア
# Durationから直接呼び出すと仕様上0が呼ばれないし
# -1する都合上、storage → score → storageとめんどいのでスコアで実装する
    scoreboard players add @s 258.Tick 1
