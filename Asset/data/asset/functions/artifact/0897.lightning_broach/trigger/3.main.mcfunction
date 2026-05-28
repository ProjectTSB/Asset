#> asset:artifact/0897.lightning_broach/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0897.lightning_broach/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:897}}}]
    scoreboard players operation $Count Temporary < $3 Const
# ダメージ係数の設定
    scoreboard players set $Multi.Normal Temporary 100
    scoreboard players operation $Multi.Normal Temporary *= $Count Temporary
    scoreboard players add $Multi.Normal Temporary 200
    scoreboard players set $Multi.Angel Temporary 5
    scoreboard players operation $Multi.Angel Temporary *= $Count Temporary
    scoreboard players add $Multi.Angel Temporary 10
# 各自ダメージ
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..160,sort=random,limit=3] run function asset:artifact/0897.lightning_broach/trigger/damage

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $Multi.Normal Temporary
    scoreboard players reset $Multi.Angel Temporary
