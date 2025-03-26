#> asset:artifact/1208.secret_art_waterfall/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1208.secret_art_waterfall/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 視点先に召喚する
    execute anchored eyes positioned ^ ^ ^0.25 run function asset:artifact/1208.secret_art_waterfall/trigger/recursive

# リセット
    scoreboard players reset $Recursive Temporary
    tag @s remove Check
