#> asset:object/1110.heavy_lava_bomb/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1110/hit

# 一度しか実行されないようにする
    execute if data storage asset:context this{AlreadyHit:true} run return fail

# 雪玉を消し飛ばす
    execute on vehicle run kill @s

# ヒット判定
    data modify storage asset:context this.AlreadyHit set value true
