#> asset:mob/0372.tutankhamen/tick/skill/dash/chain_dash
#
# ダッシュからダッシュへ
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/**

# スコアをセット
    scoreboard players set @s General.Mob.Tick -1

# 即座に付近のプレイヤーを見る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# Tagを削除
    tag @s remove AC.Dash.Left
    tag @s remove AC.Dash.Right
    tag @s remove AC.Dash.Side
    tag @s remove AC.Dash.Slash
    tag @s remove AC.Dash.Charge

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "0372.Dash"
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグのコマンド
#    scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0..1 run tag @s add AC.Dash.Side
    execute if score $Random Temporary matches 0 run tag @s add AC.Dash.Left
    execute if score $Random Temporary matches 1 run tag @s add AC.Dash.Right
    execute if score $Random Temporary matches 2 run tag @s add AC.Dash.Slash
    execute if score $Random Temporary matches 3 run tag @s add AC.Dash.Charge

# リセット
    scoreboard players reset $Random Temporary
