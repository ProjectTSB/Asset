#> asset:object/2196.down_dummy/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2196/init

# ブロック設置
    execute at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ barrier
