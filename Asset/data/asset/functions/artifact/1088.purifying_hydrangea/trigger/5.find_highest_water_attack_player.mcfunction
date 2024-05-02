#> asset:artifact/1088.purifying_hydrangea/trigger/5.find_highest_water_attack_player
#
# 水攻撃補正が最も高いプレイヤーを検索する
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/4.set_effect_target

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $HighestWaterAttack

# 検索対象：回復対象ではなく最も現在体力割合の低いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!BuffTarget,distance=..20] add SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=SearchTarget] store result score @s Temporary run function asset:artifact/1088.purifying_hydrangea/trigger/6.get_water_attack_modifier

# 全員の水攻撃補正と比較する
    execute as @a[tag=SearchTarget] run scoreboard players operation $HighestWaterAttack Temporary > @s Temporary

# 特定したプレイヤーにTagを付与
# SearchTargetとBuffTargetを両立するプレイヤーがいるのは、検索対象のプレイヤーを特定済みの場合のみ
    execute as @a[tag=SearchTarget] unless entity @p[tag=SearchTarget,tag=BuffTarget] if score @s Temporary = $HighestWaterAttack Temporary run tag @s add BuffTarget

# リセット
    scoreboard players reset @a[tag=SearchTarget] Temporary
    tag @a[tag=SearchTarget] remove SearchTarget
    scoreboard players reset $HighestWaterAttack Temporary
