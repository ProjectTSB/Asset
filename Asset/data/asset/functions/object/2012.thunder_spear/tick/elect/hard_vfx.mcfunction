#> asset:object/2012.thunder_spear/tick/elect/hard_vfx
#
# ハード帯電時のエフェクト
#
# @within function asset:object/2012.thunder_spear/tick/

# 追加パーティクル
    particle dust 2 0 100000000 3 ~ ~ ~ 1 5 1 0 5 force @a[distance=..32]
    particle electric_spark ~ ~ ~ 1 5 1 0 25 force @a[distance=..32]
