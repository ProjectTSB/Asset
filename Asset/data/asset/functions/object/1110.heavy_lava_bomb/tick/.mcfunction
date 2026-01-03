#> asset:object/1110.heavy_lava_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1110/tick

#> Private
# @private
    #declare tag 1110.NoVehicle

# 既にヒットしたならTick加算
    execute if data storage asset:context this{AlreadyHit:true} run scoreboard players add @s General.Object.Tick 1

# 雪玉がいる間のvfx
    execute if predicate lib:is_vehicle run particle dust 1 0.45 0.1 1.2 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a

# 回転
# TODO バージョンアップしたら/rotateにする
    execute unless data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~5 ~
    execute if data storage asset:context this{LeftRotate:true} run tp @s ~ ~ ~ ~-5 ~

# super.tick
    execute at @s run function asset:object/super.tick

# 爆発前の諸々
    execute if score @s General.Object.Tick matches 1.. run function asset:object/1110.heavy_lava_bomb/tick/before_boom

# 爆発
    execute if score @s General.Object.Tick matches 24.. run function asset:object/1110.heavy_lava_bomb/tick/boom
