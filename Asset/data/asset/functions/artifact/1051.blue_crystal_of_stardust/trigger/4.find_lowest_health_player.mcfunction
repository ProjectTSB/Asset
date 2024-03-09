#> asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_player
#
# 最も現在HPの低いプレイヤーを特定し、Tagを付与する
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/3.main

#> Private
# @private
    #declare score_holder $LowestHealth

# 一定範囲内のプレイヤーの体力をスコアへ代入
    execute as @a[tag=!HealTarget,distance=..12] run function asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health

# $LowestHealthの初期値として対象プレイヤー1名の体力を代入
    execute unless score $LowestHealth Temporary matches 1.. as @a[tag=!HealTarget,distance=..12,limit=1] store result score $LowestHealth Temporary run scoreboard players get @s Temporary

# 全員の体力と比較する
    execute as @a[tag=!HealTarget,distance=..12] run scoreboard players operation $LowestHealth Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
    execute as @a[tag=!HealTarget,distance=..12] if score @s Temporary = $LowestHealth Temporary run tag @s add HealTarget