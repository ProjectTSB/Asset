#> asset:artifact/1581.reactor_plate/trigger/calculate
#
# ダメージ計算
#
# @within function asset:artifact/1581.reactor_plate/3.main

#> Private
# @private
    #declare score_holder $17X.Stack
    #declare score_holder $17X.HP

# スタック取得
    execute store result score $17X.Stack Temporary run data get storage api: Return.Effect.Stack
    scoreboard players operation $17X.Stack Temporary *= $17X.HP Temporary
# HPの10%なのでここで10で割る
    scoreboard players operation $17X.Stack Temporary /= $10 Const
# ダメージ設定
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $17X.Stack Temporary
# リセット
    scoreboard players reset $17X.Stack Temporary
    scoreboard players reset $17X.HP Temporary
