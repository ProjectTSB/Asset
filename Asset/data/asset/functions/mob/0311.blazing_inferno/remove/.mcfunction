#> asset:mob/0311.blazing_inferno/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/311/remove

# 自分のモデルを削除
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this
