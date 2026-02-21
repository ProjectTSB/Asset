#> asset:object/0005.abstract_gravity_projectile/range_over/
#
# 射程限界に到達した際の処理 デフォルトはhitメソッドを直接呼び出す
#
# @within asset:object/alias/5/range_over

# killメソッド呼び出し
    function asset:object/call.m {method:"kill"}
