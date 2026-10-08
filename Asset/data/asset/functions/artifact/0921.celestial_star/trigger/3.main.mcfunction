#> asset:artifact/0921.celestial_star/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0921.celestial_star/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 視点の先へ最大20m進み、星を設置する
    scoreboard players set $921.Range Temporary 80
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0921.celestial_star/trigger/place/raycast

# リセット
    scoreboard players reset $921.Range Temporary
