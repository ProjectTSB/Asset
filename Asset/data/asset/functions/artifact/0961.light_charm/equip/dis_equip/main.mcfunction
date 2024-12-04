#> asset:artifact/0961.light_charm/equip/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0961.light_charm/equip/dis_equip/

# 音
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-03c100000007
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-03c100000007

# 補正を追加
    execute unless entity @s[tag=!DevPrivilege,predicate=player_manager:is_believe/null] run function asset:artifact/0961.light_charm/equip/add_modifier
