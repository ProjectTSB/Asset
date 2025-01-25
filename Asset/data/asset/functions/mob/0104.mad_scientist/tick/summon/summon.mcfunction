#> asset:mob/0104.mad_scientist/tick/summon/summon
#
# 召喚処理
#
# @within function
#   asset:mob/0104.mad_scientist/tick/summon/

#> Private
# @private
    #declare score_holder $Difficulty
    #declare score_holder $Stack
    #declare score_holder $MPReduceVal

# 属性ごとのダメージ
    execute if data storage asset:context this{Element:"Fire"} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fire
    execute if data storage asset:context this{Element:"Water"} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Water
    execute if data storage asset:context this{Element:"Thunder"} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder

# 水ポーションなら難易度に比例した鈍足のデータをフィールドに突っ込んでおく
# Stack = (this.Slowness.Stack * Difficulty)
    execute if data storage asset:context this{Element:"Water"} run function api:global_vars/get_difficulty
    execute if data storage asset:context this{Element:"Water"} store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute if data storage asset:context this{Element:"Water"} run data modify storage api: Argument.FieldOverride.Slowness.Duration set from storage asset:context this.Slowness.Duration
    execute if data storage asset:context this{Element:"Water"} store result score $Stack Temporary run data get storage asset:context this.Slowness.Stack
    execute if data storage asset:context this{Element:"Water"} store result storage api: Argument.FieldOverride.Slowness.Stack int 1 run scoreboard players operation $Stack Temporary *= $Difficulty Temporary

# 雷ポーションなら難易度値に比例したMP減少量をフィールドに突っ込んでおく
# MPReduceVal = (this.MPReduceVal * 難易度値)
    execute if data storage asset:context this{Element:"Thunder"} run function api:global_vars/get_difficulty
    execute if data storage asset:context this{Element:"Thunder"} store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute if data storage asset:context this{Element:"Thunder"} store result score $MPReduceVal Temporary run data get storage asset:context this.MPReduceVal
    execute if data storage asset:context this{Element:"Thunder"} store result storage api: Argument.FieldOverride.MPReduceVal int 1 run scoreboard players operation $MPReduceVal Temporary *= $Difficulty Temporary

# 毒ポーションならデータを引き継がせる
    execute if data storage asset:context this{Element:"Poison"} run data modify storage api: Argument.FieldOverride.Poison set from storage asset:context this.Poison

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Element set from storage asset:context this.Element
    data modify storage api: Argument.FieldOverride.PotionColor set from storage asset:context this.PotionColor
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $Stack Temporary
    scoreboard players reset $MPReduceVal Temporary
