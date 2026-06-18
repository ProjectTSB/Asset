#> asset:artifact/1572.after_glow/trigger/object_summon
#
# ビーム召喚
#
# @within function asset:artifact/1572.after_glow/trigger/pointer

# ビーム召喚(真上向く)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:16711680,Scale:[0.5f,100f,0.5f],Frames:[20335,20336,20337]}
    execute rotated ~ ~-90 run function api:object/summon
# 効果音
    playsound minecraft:entity.allay.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1 2
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 1 1.2

# Object召喚
    data modify storage api: Argument.ID set value 1166
# ダメージセット
    data modify storage api: Argument.FieldOverride.Damage set value 9999
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
