#> asset:artifact/0665.soul_fire_armor/trigger/equip/3.main
#
# 装備時の処理部
#
# @within function asset:artifact/0665.soul_fire_armor/trigger/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 装備部位数を取得
    data modify storage api: Argument.ID set value 232
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~0.8 ~ run function asset:artifact/0664.soul_fire_armor/trigger/equip/4.particle
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~1.1 ~ run function asset:artifact/0664.soul_fire_armor/trigger/equip/4.particle
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~1.4 ~ run function asset:artifact/0664.soul_fire_armor/trigger/equip/4.particle
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.8 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0
