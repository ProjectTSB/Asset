#> asset:mob/0376.convict_v2/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/376/remove

datapack disable "file/AJ_Convict.zip"

# super.remove呼び出し
    function asset:mob/super.remove

    execute as @e[type=item_display,tag=AG.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:convict/remove/this
