#> asset:artifact/0016.golem_core/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/16/click/

# ゴーレム召喚
    summon minecraft:iron_golem ~ ~1 ~ {Health:75f,Attributes:[{Name:"generic.max_health",Base:75d},{Name:"generic.attack_damage",Base:15d}]}
    clear @s iron_block 1

# 演出
    particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.5 100 force @s
    playsound minecraft:block.anvil.destroy player @s ~ ~ ~ 1 0.9
