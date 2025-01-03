#> asset:object/1066.knife/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1066/hit_block

# 演出
    playsound item.trident.hit_ground player @a ~ ~ ~ 1 1
    particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 20
    particle end_rod ~ ~ ~ 0 0 0 0.5 7

# super 呼び出し
    function asset:object/super.method
