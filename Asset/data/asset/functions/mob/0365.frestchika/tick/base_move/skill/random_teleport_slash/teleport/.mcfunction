#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/

# 適当なプレイヤー狙いでワープ
    function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/spread

# ワープ後近くにいるやつの方を向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2235
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ~ ~1.5 ~ run function api:object/summon
