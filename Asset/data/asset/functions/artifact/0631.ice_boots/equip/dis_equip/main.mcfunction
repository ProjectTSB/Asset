#> asset:artifact/0631.ice_boots/equip/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0631.ice_boots/equip/dis_equip/

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,631,3]
    function api:modifier/defense/water/remove

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,631,3]
    function api:modifier/attack/water/remove

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.8 0

# フルセット効果削除
    execute if entity @s[tag=HH.Fullset] run function asset:artifact/0629.ice_armor/equip/5.fullset_dis_equip