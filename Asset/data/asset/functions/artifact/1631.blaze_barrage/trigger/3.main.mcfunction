#> asset:artifact/1631.blaze_barrage/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1631.blaze_barrage/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 地上ならジャンプ
    execute unless data storage api: {OnGround:0b} run function asset:artifact/1631.blaze_barrage/trigger/jump/

# 地上でないなら魔法弾発射
    execute if data storage api: {OnGround:0b} run function asset:artifact/1631.blaze_barrage/trigger/fire
