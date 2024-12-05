#> asset:artifact/0643.raimei_chestplate/equip/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0643.raimei_chestplate/equip/dis_equip/

# タグを消す(チェストプレート側で実行)
    execute if entity @s[tag=HV.Full] run function asset:artifact/0643.raimei_chestplate/equip/3.3.tag_delete

# 引数の設定
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,643,5]
# 補正の削除
    function api:modifier/defense/thunder/remove