#> asset:artifact/0184.increasable_cookie/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/184/click/

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 185
    function api:artifact/give/from_id
