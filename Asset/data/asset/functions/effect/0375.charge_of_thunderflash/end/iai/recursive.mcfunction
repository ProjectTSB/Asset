#> asset:effect/0375.charge_of_thunderflash/end/iai/recursive
#
#
#
# @within function
#   asset:effect/0375.charge_of_thunderflash/end/iai/
#   asset:effect/0375.charge_of_thunderflash/end/iai/recursive

# Rangeが0ならreturn
    execute if data storage asset:context this{Range:0} run return fail

# ヒットボックスがブロックに接触したならreturn
    execute positioned ^ ^ ^0.5 unless function asset:effect/0375.charge_of_thunderflash/end/iai/check/hit_box run return fail

# 敵がいたらtagをつけておく
    execute positioned ~-0.5 ~ ~-0.5 run tag @e[type=#lib:living_without_player,tag=Enemy,dx=0,dy=1,dz=0] add Target

# Range - 1
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# 再帰
    tp @s ^ ^ ^0.5
    execute positioned as @s run function asset:effect/0375.charge_of_thunderflash/end/iai/recursive
