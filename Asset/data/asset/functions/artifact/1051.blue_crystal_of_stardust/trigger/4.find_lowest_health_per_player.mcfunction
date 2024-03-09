#> asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_per_player
#
# 最も現在体力割合の低いプレイヤーを特定し、Tagを付与する
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/3.main

#> Private
# @private
    #declare score_holder $LowestHealthPer

# 一定範囲内のプレイヤーの体力割合をスコアへ代入
    execute as @a[tag=!HealTarget,distance=..12] store result score @s Temporary run function asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health_per

# $LowestHealthPerの初期値として対象プレイヤー1名の体力割合を代入
    execute unless score $LowestHealthPer Temporary matches 1.. as @a[tag=!HealTarget,distance=..12,limit=1] store result score $LowestHealthPer Temporary run scoreboard players get @s Temporary

# 全員の体力割合と比較する
    execute as @a[tag=!HealTarget,distance=..12] run scoreboard players operation $LowestHealthPer Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
    execute as @a[tag=!HealTarget,distance=..12] if score @s Temporary = $LowestHealthPer Temporary run tag @s add HealTarget

# リセット
    scoreboard players reset @a[distance=..12] Temporary
    scoreboard players reset $LowestHealthPer