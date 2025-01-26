#> asset:artifact/1032.life_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1032.life_charm/trigger/dis_equip/

# 演出
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:artifact/1032.life_charm/trigger/add_modifier
