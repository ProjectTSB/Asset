#> asset:artifact/0704.wizard_robe_upper/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0704.wizard_robe_upper/trigger/dis_equip/

# 魔法ダメージ量、魔法耐性、MP回復量 物理耐性、物理攻撃の補正の削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
# 補正の削除
    function api:modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,704,5]
# 補正の削除
    function api:modifier/attack/magic/remove
