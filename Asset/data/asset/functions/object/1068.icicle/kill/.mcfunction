#> asset:object/1068.icicle/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1068/kill

# 演出
    playsound block.glass.break neutral @a ~ ~ ~ 1 1.3
    playsound block.glass.break neutral @a ~ ~ ~ 1 1.2
    particle dust 1 1000000000 1000000000 1 ~ ~0.05 ~ 0.1 0.1 0.1 0 8

# super 呼び出し
    function asset:object/super.method
