#> asset:artifact/1183.cosmo_site/trigger/hit
#
#
#
# @within function asset:artifact/1183.cosmo_site/trigger/shot

# メインのやつ召喚
    data modify storage api: Argument.ID set value 1089
    data modify storage api: Argument.FieldOverride.Damage set value 1800f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# 警告召喚
    data modify storage api: Argument.ID set value 1090
    function api:object/summon
