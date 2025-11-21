#> asset:mob/0420.astro_blaze/tick/shoot/summon
#
#
#
# @within function asset:mob/0420.astro_blaze/tick/shoot/spread

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Object
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2171
    function api:object/summon
