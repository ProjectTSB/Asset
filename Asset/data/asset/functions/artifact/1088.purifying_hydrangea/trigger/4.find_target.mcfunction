#> asset:artifact/1088.purifying_hydrangea/trigger/4.find_target
#
# 水攻撃補正が最も高いプレイヤーを検索する
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/3.main

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $HighestWaterAttack

# 検索対象：BuffTargetではなく水攻撃補正が最も高いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!BuffTarget,distance=..20] add SearchTarget

# 各プレイヤーの水攻撃補正をスコアへ代入
    execute as @a[tag=SearchTarget] store result score @s Temporary run function asset:artifact/1088.purifying_hydrangea/trigger/5.get_water_attack_modifier

# 全員の水攻撃補正と比較する
    execute as @a[tag=SearchTarget] run scoreboard players operation $HighestWaterAttack Temporary > @s Temporary

# 特定したプレイヤーにTagを付与
# SearchTargetとBuffTargetを両立するプレイヤーがいるのは、検索対象のプレイヤーを特定済みの場合のみ
    execute as @a[tag=SearchTarget] unless entity @p[tag=SearchTarget,tag=BuffTarget] if score @s Temporary = $HighestWaterAttack Temporary run tag @s add BuffTarget

# リセット
    tag @a[tag=SearchTarget] remove SearchTarget
    scoreboard players reset @a[tag=SearchTarget] Temporary
    scoreboard players reset $HighestWaterAttack Temporary
