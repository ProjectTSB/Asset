#> asset:mob/0189.water_mage/tick/summon
#
# ウォーターマジックを召喚
#
# @within function asset:mob/0189.water_mage/tick/

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $AttackCount

# 召喚の設定
    data modify storage api: Argument.ID set value 2074
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 難易度値に比例して攻撃回数を設定
# (Difficulty * 2 + 1)
    function api:global_vars/get_difficulty
    execute store result score $AttackCount Temporary run data get storage api: Return.Difficulty 2
    execute store result storage api: Argument.FieldOverride.AttackCount int 1 run scoreboard players add $AttackCount Temporary 1

# ハード以上なら的中時に鈍足を付与する設定を追加
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Slowness set value true

# ノーマル以下
# プレイヤーが4m以内にいる場合、足元に召喚
# プレイヤーが4m以上離れている場合、プレイヤーの方向に召喚
    execute if predicate api:global_vars/difficulty/max/normal if entity @p[gamemode=!spectator,distance=..4] at @p[gamemode=!spectator,distance=..4] run function api:object/summon
    execute if predicate api:global_vars/difficulty/max/normal if data storage api: Argument.ID if entity @p[gamemode=!spectator,distance=4..30] facing entity @p[gamemode=!spectator,distance=4..30] feet positioned ^ ^ ^4 run function api:object/summon

# ハード以上で足元に召喚できる範囲を強化
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @p[gamemode=!spectator,distance=..6] at @p[gamemode=!spectator,distance=..6] run function api:object/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless if data storage api: Argument.ID if entity @p[gamemode=!spectator,distance=6..30] facing entity @p[gamemode=!spectator,distance=6..30] feet positioned ^ ^ ^7 run function api:object/summon

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $AttackCount Temporary
