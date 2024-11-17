#> asset:mob/0104.mad_scientist/tick/summon/summon
#
# 召喚処理
#
# @within function
#   asset:mob/0104.mad_scientist/tick/summon/
#   asset:mob/0104.mad_scientist/tick/summon/addition

# 属性ごとにダメージを調整しておく
    execute if data storage asset:context this{Element:Fire} run data modify storage api: Argument.FieldOverride.Damage set value 20.0f
    execute if data storage asset:context this{Element:Water} run data modify storage api: Argument.FieldOverride.Damage set value 20.0f
    execute if data storage asset:context this{Element:Thunder} run data modify storage api: Argument.FieldOverride.Damage set value 20.0f

# 召喚する
    data modify storage api: Argument.ID set value 2070
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Element set from storage asset:context this.Element
    data modify storage api: Argument.FieldOverride.PotionColor set from storage asset:context this.PotionColor
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=skeleton,tag=this,distance=..2,limit=1] MobUUID
    function api:object/summon
