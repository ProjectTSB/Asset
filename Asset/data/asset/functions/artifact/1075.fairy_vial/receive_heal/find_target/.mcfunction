#> asset:artifact/1075.fairy_vial/receive_heal/find_target/
#
# 現在体力の低いプレイヤーを見つける
#
# @within function asset:artifact/1075.fairy_vial/receive_heal/

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $MostLostHealth

# 検索対象：回復対象ではなく最も現在体力割合の低いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!HealTarget,distance=..20] add SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=SearchTarget] store result score @s Temporary run function asset:artifact/1075.fairy_vial/receive_heal/find_target/get_lost_health

# $MostLostHealthの初期値として対象プレイヤーの内1名の体力を代入
    execute unless score $MostLostHealth Temporary matches 1.. as @p[tag=SearchTarget] store result score $MostLostHealth Temporary run scoreboard players get @s Temporary

# 近い順に全員の体力と比較する
    execute as @a[tag=SearchTarget,sort=nearest] run scoreboard players operation $MostLostHealth Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
# SearchTargetとHealTargetを両立するプレイヤーがいるのは、検索対象のプレイヤーを特定済みの場合のみ
    execute as @a[tag=SearchTarget] unless entity @p[tag=SearchTarget,tag=HealTarget] if score @s Temporary = $MostLostHealth Temporary run tag @s add HealTarget

# リセット
    scoreboard players reset @a[tag=SearchTarget] Temporary
    scoreboard players reset $MostLostHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $MaxHealth Temporary
    tag @a[tag=SearchTarget] remove SearchTarget
