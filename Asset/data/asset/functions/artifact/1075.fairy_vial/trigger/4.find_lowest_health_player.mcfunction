#> asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_player
#
# 現在体力の低いプレイヤーを見つける
#
# @within function asset:artifact/1075.fairy_vial/trigger/3.main

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $LowestHealth

# 検索対象：回復対象ではなく最も現在体力割合の低いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!HealTarget,distance=..20] add SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=SearchTarget] store result score @s Temporary run function asset:artifact/1075.fairy_vial/trigger/5.get_health

# $LowestHealthの初期値として対象プレイヤーの内1名の体力を代入
    execute unless score $LowestHealth Temporary matches 1.. as @a[tag=SearchTarget,limit=1] store result score $LowestHealth Temporary run scoreboard players get @s Temporary

# 全員の体力と比較する
    execute as @a[tag=SearchTarget] run scoreboard players operation $LowestHealth Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
# SearchTargetとHealTargetを両立するプレイヤーがいるのは、検索対象のプレイヤーを特定済みの場合のみ
    execute as @a[tag=SearchTarget] unless entity @p[tag=SearchTarget,tag=HealTarget] if score @s Temporary = $LowestHealth Temporary run tag @s add HealTarget

# リセット
    scoreboard players reset @a[tag=SearchTarget] Temporary
    tag @a[tag=SearchTarget] remove SearchTarget
    scoreboard players reset $LowestHealth Temporary