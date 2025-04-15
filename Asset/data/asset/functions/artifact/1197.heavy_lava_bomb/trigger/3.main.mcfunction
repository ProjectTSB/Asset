#> asset:artifact/1197.heavy_lava_bomb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1197.heavy_lava_bomb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# playsound
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.8 0.5

# 目線の位置基準で爆弾を投げる
    execute anchored eyes positioned ^ ^-0.2 ^0.5 run function asset:artifact/1197.heavy_lava_bomb/trigger/throw_bomb
