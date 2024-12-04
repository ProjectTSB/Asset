#> asset:artifact/0899.flame_ring/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/899/equip/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
    particle flame ~ ~1 ~ 0.5 0.8 0.5 0.1 100
# 補正を追加
    function asset:artifact/0899.flame_ring/equip/add_modifier