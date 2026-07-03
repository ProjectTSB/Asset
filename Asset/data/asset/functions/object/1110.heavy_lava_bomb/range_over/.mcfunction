#> asset:object/1110.heavy_lava_bomb/range_over/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1110/range_over

# 雪玉とさようなら
    execute on vehicle run kill @s

# hitメソッドとこんにちは
    function asset:object/call.m {method:"hit"}
