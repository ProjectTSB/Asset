#> asset:mob/0106.mini_shulker/tick/teleport/do/exec.m
# @input args RelativePos : string
# @within function asset:mob/0106.mini_shulker/tick/teleport/do/

# 前演出
    function asset:mob/0106.mini_shulker/tick/vfx/pre_tp

# テレポート
    data modify entity @s Pos set from storage asset:temp 2Y.Teleport.Pos
    $execute at @s run tp @s $(RelativePos)
# 頭の情報を変える
    execute on passengers run data modify entity @s transformation set from storage asset:temp 2Y.Teleport.Transformation

# 後演出
    execute at @s run function asset:mob/0106.mini_shulker/tick/vfx/post_tp

# 行動リセット
    function asset:mob/0106.mini_shulker/tick/reset
