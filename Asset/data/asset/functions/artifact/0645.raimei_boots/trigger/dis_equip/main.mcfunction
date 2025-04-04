#> asset:artifact/0645.raimei_boots/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0645.raimei_boots/trigger/dis_equip/

#> Private
# @private
    #declare tag HV.Full

# タグを消す(チェストプレート側で実行)
    execute if entity @s[tag=HV.Full] run function asset:artifact/0643.raimei_chestplate/trigger/3.3.tag_delete

# 引数の設定
    # UUID
    data modify storage api: Argument.UUID set value [I;1,1,645,3]
# 補正の削除
    function api:modifier/defense/thunder/remove

# 雷バフを削除するためのUUID指定
    #UUID
    data modify storage api: Argument.UUID set value [I;1,1,644,4]
# 補正さよなら～
    function api:modifier/attack/thunder/remove
