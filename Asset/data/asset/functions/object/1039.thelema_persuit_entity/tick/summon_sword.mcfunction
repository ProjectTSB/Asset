#> asset:object/1039.thelema_persuit_entity/tick/summon_sword
#
# テレームの剣を召喚する
#
# @within function asset:object/1039.thelema_persuit_entity/tick/

# 演出
    particle wax_off ~ ~ ~ 0 0 0 2 10 normal @a
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.resonate neutral @a ~ ~ ~ 0.8 1.5 0

# 召喚
    data modify storage api: Argument.ID set value 1040
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute store result storage api: Argument.FieldOverride.MaxHP double 1.0 run data get storage asset:context this.MaxHP
    function api:object/summon
