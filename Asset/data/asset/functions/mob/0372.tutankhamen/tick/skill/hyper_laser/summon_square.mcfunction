#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/

# データ指定
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.HyperLaser
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2091
    function api:object/summon
