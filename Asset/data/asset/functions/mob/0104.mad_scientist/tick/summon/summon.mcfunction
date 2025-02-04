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

# 毒ポーション
    execute if data storage asset:context this{Element:"Poison"} run function asset:mob/0104.mad_scientist/tick/summon/poison

# 火ポーション
    execute if data storage asset:context this{Element:"Fire"} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Fire

# 水ポーション
    execute if data storage asset:context this{Element:"Water"} run function asset:mob/0104.mad_scientist/tick/summon/water

# 雷ポーション
    execute if data storage asset:context this{Element:"Thunder"} run function asset:mob/0104.mad_scientist/tick/summon/thunder

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Element set from storage asset:context this.Element
    data modify storage api: Argument.FieldOverride.PotionColor set from storage asset:context this.PotionColor
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
