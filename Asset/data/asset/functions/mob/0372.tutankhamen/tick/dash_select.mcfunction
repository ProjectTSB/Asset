#> asset:mob/0372.tutankhamen/tick/dash_select
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/

#> private
# @private
    #declare score_holder $Random

# 行動中扱いにする
    tag @s add AC.InAction

# ダッシュ使ったことにする
    tag @s add AC.DashUsed

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "0372.Dash"
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグのコマンド
#    scoreboard players set $Random Temporary 3

# スキル選択
    execute if score $Random Temporary matches 0..1 run tag @s add AC.Dash.Side
    execute if score $Random Temporary matches 0 run tag @s add AC.Dash.Left
    execute if score $Random Temporary matches 1 run tag @s add AC.Dash.Right
    execute if score $Random Temporary matches 2 run tag @s add AC.Dash.Slash
    execute if score $Random Temporary matches 3 run tag @s add AC.Dash.Charge

# リセット
    scoreboard players reset $Random Temporary
