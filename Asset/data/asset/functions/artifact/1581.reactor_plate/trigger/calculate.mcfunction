#> asset:artifact/1581.reactor_plate/trigger/calculate
#
# ダメージ計算
#
# @within function asset:artifact/1581.reactor_plate/**
    #declare score_holder $17X.Stack
    #declare score_holder $17X.Damage
    #declare score_holder $17X.Baf

# スタック取得
    execute store result score $17X.Stack Temporary run data get storage api: Return.Effect.Stack
    scoreboard players operation $17X.Stack Temporary *= $17X.Baf Temporary
    scoreboard players operation $17X.Damage Temporary += $17X.Stack Temporary
# ダメージ設定
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $17X.Damage Temporary
# リセット
    scoreboard players reset $17X.Stack Temporary
    scoreboard players reset $17X.Damage Temporary
    scoreboard players reset $17X.Baf Temporary
