#> asset:object/1166.after_glow/tick/vfx/beem
#
# Objectのビームの演出
#
# @within asset:object/1166.after_glow/tick/beem


# ビーム召喚(真上向く)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:16711680,Scale:[2f,100f,2f],Frames:[20335,20336,20337]}
    execute rotated ~ ~-90 run function api:object/summon
# 音
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 2.0 1.5
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4
