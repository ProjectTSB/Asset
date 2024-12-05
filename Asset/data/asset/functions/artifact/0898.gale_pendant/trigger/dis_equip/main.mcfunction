#> asset:artifact/0898.gale_pendant/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0898.gale_pendant/trigger/dis_equip/

# バフを付与
    execute unless entity @s[tag=!DevPrivilege,predicate=!player_manager:is_believe/flora,predicate=!player_manager:is_believe/nyaptov] run function asset:artifact/0898.gale_pendant/trigger/buff
