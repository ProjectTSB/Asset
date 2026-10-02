#> asset:artifact/1626.years_magic_index/trigger/vfx/attack
#
# 知識の重みを振りかざした時の演出
#
# @within function asset:artifact/1626.years_magic_index/trigger/3.main

# 演出
    playsound block.enchantment_table.use player @a ~ ~ ~ 0.7 0.9
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.7 1.0
    playsound item.totem.use player @a ~ ~ ~ 0.5 1.2
    playsound entity.ender_dragon.hurt player @a ~ ~ ~ 1.3 1.0
    playsound entity.player.attack.crit player @a ~ ~ ~ 1.5 0.7
    playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 1.3 1.0
    playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1.5 1.0
    playsound block.anvil.break player @a ~ ~ ~ 1.3 0.5
    particle minecraft:enchant ~ ~1 ~ 1.5 1.5 1.5 1.5 500
    particle minecraft:witch ~ ~1 ~ 1 1 1 0.5 20
    particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 3
    particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
    particle electric_spark ~ ~ ~ 1.0 1.0 1.0 1 50
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 3.0 0.5
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 2.0 0.5
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3.0 0.8
    playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 3.0 0.5
    playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 3.0 1.5
