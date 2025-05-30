#> asset:artifact/0667.soul_fire_armor/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0667.soul_fire_armor/equip/2.check_condition

# 装備部位数を取得
    data modify storage api: Argument.ID set value 232
    function api:entity/mob/effect/get/from_id
# 演出
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~1.7 ~ run function asset:artifact/0664.soul_fire_armor/equip/vfx
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.8 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0
