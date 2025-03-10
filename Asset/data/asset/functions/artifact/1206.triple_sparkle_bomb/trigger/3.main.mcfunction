#> asset:artifact/1206.triple_sparkle_bomb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1206.triple_sparkle_bomb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# playsound
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.8 0.55

# 1個目召喚
    execute anchored eyes positioned ^ ^-0.2 ^ run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/

# 2、3個目は拡散つきで投げる
    execute anchored eyes positioned ^ ^-0.2 ^ run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/with_spread
    execute anchored eyes positioned ^ ^-0.2 ^ run function asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb/with_spread
