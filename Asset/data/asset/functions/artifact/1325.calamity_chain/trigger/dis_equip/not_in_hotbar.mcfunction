#> asset:artifact/1325.calamity_chain/trigger/dis_equip/not_in_hotbar
#
#
#
# @within function asset:artifact/1325.calamity_chain/trigger/dis_equip/main

# tag削除
    tag @s remove 10T.Equip

# 演出
    playsound minecraft:block.grindstone.use player @a ~ ~ ~ 1 1

# 戦闘中に装備した場合、デバフを得る
    execute if predicate lib:in_battle run function asset:artifact/1325.calamity_chain/trigger/debuff
