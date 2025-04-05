#> asset:artifact/0643.raimei_chestplate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0643.raimei_chestplate/trigger/dis_equip/

# タグを消す(チェストプレート側で実行)
    execute if entity @s[tag=HV.Full] run function asset:artifact/0643.raimei_chestplate/trigger/fullset/dis_equip/

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,643,5]
    function api:modifier/defense/thunder/remove

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,643,5]
    function api:modifier/attack/thunder/remove
