#> asset:object/2016.axia_critical/tick/summon_area
#
# 範囲表示
#
# @within function asset:object/2016.axia_critical/tick/

# オーバーライドを設定
    execute if entity @s[tag=!2016.Opening] run data modify storage api: Argument.FieldOverride set value {Color:16711731,Scale:[12f,12f,0.01f],Tick:20}
    execute if entity @s[tag=2016.Opening] run data modify storage api: Argument.FieldOverride set value {Color:16711731,Scale:[12f,12f,0.01f],Tick:80}


# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
