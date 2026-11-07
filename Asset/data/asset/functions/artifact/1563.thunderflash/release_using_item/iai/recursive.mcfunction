#> asset:artifact/1563.thunderflash/release_using_item/iai/recursive
#
#
#
# @within function
#   asset:artifact/1563.thunderflash/release_using_item/iai/
#   asset:artifact/1563.thunderflash/release_using_item/iai/recursive

# Rangeが0ならreturn
    execute if score $Range Temporary matches ..0 run return fail

# ヒットボックスがブロックに接触したならreturn
    execute positioned ^ ^ ^0.5 unless function asset:artifact/1563.thunderflash/release_using_item/iai/check/hit_box run return fail

# 敵がいたらtagをつけておく
    execute positioned ~-0.5 ~ ~-0.5 run tag @e[type=#lib:living_without_player,tag=Enemy,dx=0,dy=1,dz=0] add Target

# Range - 1
    scoreboard players remove $Range Temporary 1

# 移動
    tp @s ^ ^ ^0.5

# 演出
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1

# 再帰
    execute positioned as @s run function asset:artifact/1563.thunderflash/release_using_item/iai/recursive
