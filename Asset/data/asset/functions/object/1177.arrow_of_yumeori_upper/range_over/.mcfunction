#> asset:object/1177.arrow_of_yumeori_upper/range_over/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1177/range_over

# 消滅
    function asset:object/call.m {method:"kill"}

# 使用地点に矢を降らす用のentityを召喚
    function asset:object/1177.arrow_of_yumeori_upper/range_over/summon.m with storage asset:context this.Pos
