#> asset:artifact/1053.grimoire_of_purity/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1053.grimoire_of_purity/trigger/dis_equip/

# 補正を削除する
    # 基礎攻撃力
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        function api:modifier/attack/base/remove
    # 火属性攻撃力
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        function api:modifier/attack/fire/remove
    # 水属性攻撃力
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        function api:modifier/attack/water/remove
    # 雷属性攻撃力
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        function api:modifier/attack/thunder/remove
