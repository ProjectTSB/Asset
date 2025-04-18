#> asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_aligning/

# 弾召喚
    data modify storage api: Argument.ID set value 2109
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.IsDark set value true
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Adamant
    function api:object/summon

# 演出
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    playsound item.trident.return hostile @a ~ ~ ~ 2 0.7
    particle flash ~ ~ ~ 1 1 1 0 5 force
