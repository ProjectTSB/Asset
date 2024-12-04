#> asset:artifact/0501.infinity/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/501/click/

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 501
    function api:artifact/give/from_id
