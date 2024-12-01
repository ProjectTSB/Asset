#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_1

# 弾召喚
    data modify storage api: Argument.ID set value 2111
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    function api:object/summon

# 演出
    # playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    # playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    # playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    # playsound item.trident.return hostile @a ~ ~ ~ 2 0.7
    particle flash ~ ~ ~ 1 1 1 0 4 force
    particle firework ~ ~ ~ 1 1 1 0.3 10 force
