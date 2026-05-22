#> asset:object/0005.abstract_gravity_projectile/hit/
#
# ヒット時の処理。デフォルトではキル処理があるのみ。
#
# @within asset:object/alias/5/hit

# killメソッド呼び出し
    function asset:object/call.m {method:"kill"}
