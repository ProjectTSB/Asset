#> asset:artifact/0295.call_elemental_familiar/trigger/summon_fairy
#
#
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 乱数
    execute store result score $Random Temporary run random value 0..2

# ダメージ設定
    data modify storage api: Argument.FieldOverride.Damage set value 65.0f

# 属性を決める
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Element set value "Fire"
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Element set value "Thunder"
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Element set value "Water"

# 召喚する
    data modify storage api: Argument.ID set value 1055
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# リセット
    scoreboard players reset $Random Temporary
