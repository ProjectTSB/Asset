#> asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_percent_player
#
# 現在体力割合の低いプレイヤーを見つける
#
# @within function asset:artifact/1075.fairy_vial/trigger/3.main

#> Private
# @private
    #declare score_holder $LowestHealthPer

# 検索対象：as @a[tag=!HealTarget,distance=..20] の中で最も現在体力割合の低いプレイヤー

# 各プレイヤーの現在体力割合をスコアへ代入
    execute as @a[tag=!HealTarget,distance=..20] store result score @s Temporary run function asset:artifact/1075.fairy_vial/trigger/5.get_health_percent

# $LowestHealthの初期値として対象プレイヤーの内1名の体力を代入
    execute unless score $LowestHealthPer Temporary matches 1.. as @a[tag=!HealTarget,distance=..20,limit=1] store result score $LowestHealth Temporary run scoreboard players get @s Temporary

# 全員の体力と比較する
    execute as @a[tag=!HealTarget,distance=..20] run scoreboard players operation $LowestHealthPer Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
    execute as @a[tag=!HealTarget,distance=..20] if score @s Temporary = $LowestHealthPer Temporary run tag @s add HealTarget

# リセット
    scoreboard players reset $LowestHealthPer Temporary
    scoreboard players reset @a[tag=!HealTarget,distance=..20] Temporary