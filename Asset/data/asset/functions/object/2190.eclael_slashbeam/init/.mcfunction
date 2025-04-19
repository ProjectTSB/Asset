#> asset:object/2190.eclael_slashbeam/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2190/init

# 反転
    execute if data storage asset:context this.IsInverse run tag @s add 2190.IsInverse

# # 角度設定
#     execute unless entity @s[tag=2190.IsInverse] run data modify entity @s transformation.left_rotation set value {axis:[0,0,1],angle:-0.698132f}
#     execute if entity @s[tag=2190.IsInverse] run data modify entity @s transformation.left_rotation set value {axis:[0,0,1],angle:0.698132f}
