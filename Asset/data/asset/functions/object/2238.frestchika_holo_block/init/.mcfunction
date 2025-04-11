#> asset:object/2238.frestchika_holo_block/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2238/init

# ブロック設置
    execute if block ~ ~ ~ #lib:no_collision run setblock ~ ~ ~ glass

# 移動
    execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
