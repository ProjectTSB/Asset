#> asset:artifact/0642.raimei_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0642.raimei_helmet/trigger/dis_equip/

#> Private
# @private
    #declare tag HV.Full

# タグを消す(チェストプレート側で実行)
    execute if entity @s[tag=HV.Full] run function asset:artifact/0643.raimei_chestplate/trigger/3.3.tag_delete

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,642,6]
    function api:modifier/defense/thunder/remove

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,642,6]
    function api:modifier/attack/thunder/remove
