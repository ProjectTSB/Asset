#> asset:artifact/1075.fairy_vial/trigger/4.find_target_player
#
# 現在体力の低いプレイヤーを見つける
#
# @within function asset:artifact/1075.fairy_vial/trigger/3.main

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $MostLostHealth

# 検索対象：回復対象ではなく最も現在体力割合の低いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!HealTarget,distance=..20] add SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=SearchTarget,distance=.20] store result score @s Temporary run function asset:artifact/1075.fairy_vial/trigger/5.get_lost_health

# $MostLostHealthの初期化
    scoreboard players set $MostLostHealth Temporary 0

# 近い順に全員の体力と比較する
    execute as @a[tag=SearchTarget,distance=.20,sort=nearest] run scoreboard players operation $MostLostHealth Temporary < @s Temporary

# $MostLostHealthと同値のプレイヤーにTagを付与
    execute as @a[tag=SearchTarget,distance=.20] if score @s Temporary = $MostLostHealth Temporary run tag @s add TempTarget

# 最大値の中で近いプレイヤー1名にtagを付与
    tag @p[tag=TempTarget,distance=..20] add HealTarget

# リセット
    scoreboard players reset @a[tag=SearchTarget,distance=.20] Temporary
    scoreboard players reset $MostLostHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $MaxHealth Temporary
    tag @a[tag=SearchTarget,distance=.20] remove SearchTarget
    tag @a[tag=TempTarget,distance=..20] remove TempTarget
