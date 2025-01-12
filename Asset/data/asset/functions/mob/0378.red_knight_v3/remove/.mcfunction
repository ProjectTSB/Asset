#> asset:mob/0378.red_knight_v3/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/378/remove

datapack disable "file/AJ_RedKnight.zip"

# 抽象
    function asset:mob/super.remove
# 消す
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/remove/this
