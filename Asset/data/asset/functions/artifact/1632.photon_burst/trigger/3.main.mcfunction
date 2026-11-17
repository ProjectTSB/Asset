#> asset:artifact/1632.photon_burst/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1632.photon_burst/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 視点位置から前方へ再帰
    scoreboard players set $RecursiveLimit Temporary 5
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1632.photon_burst/trigger/recursive

# リセット
    scoreboard players reset $RecursiveLimit Temporary
