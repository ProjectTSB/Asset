#> asset:mob/0372.tutankhamen/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/372/remove

# super.remove呼び出し
    function asset:mob/super.remove

# AJ削除
    execute at @s as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/remove/this
