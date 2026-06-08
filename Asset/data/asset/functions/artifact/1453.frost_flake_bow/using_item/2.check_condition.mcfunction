#> asset:artifact/1453.frost_flake_bow/using_item/2.check_condition
#
#
#
# @within function asset:artifact/1453.frost_flake_bow/using_item/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# バニラの弓の引き絞り検知はCanUsed関係なく行う
    function asset:artifact/1453.frost_flake_bow/using_item/bow_charge

# CanUsedでないかつ、20以上なら強制的に19に留める
    execute if entity @s[tag=!CanUsed] if score @s Ffb.Charge matches 20.. run scoreboard players set @s Ffb.Charge 19

# 2段チャージ
    execute if entity @s[tag=CanUsed] if score @s Ffb.Charge matches 20.. run function asset:artifact/1453.frost_flake_bow/using_item/extra_charge
