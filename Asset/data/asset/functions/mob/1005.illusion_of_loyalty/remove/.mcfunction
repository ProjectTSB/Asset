#> asset:mob/1005.illusion_of_loyalty/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/1005/remove

# モデルを消す
    execute as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/remove/this

# super
    function asset:mob/super.remove
