#> asset:artifact/0272.infinity_food/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/272/use_item/

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 272
    function api:artifact/give/from_id
