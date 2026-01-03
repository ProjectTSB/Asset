#> asset:object/1110.heavy_lava_bomb/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1110/hit

# 既にヒットしたならTick加算
    scoreboard players add @s General.Object.Tick 1

# 爆発前の諸々
    execute if score @s General.Object.Tick matches 1..23 run function asset:object/1110.heavy_lava_bomb/hit/before_boom

# 爆発
    execute if score @s General.Object.Tick matches 24.. run function asset:object/1110.heavy_lava_bomb/hit/boom
