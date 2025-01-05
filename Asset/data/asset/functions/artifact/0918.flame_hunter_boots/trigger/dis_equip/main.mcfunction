#> asset:artifact/0918.flame_hunter_boots/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0918.flame_hunter_boots/trigger/dis_equip/

# 演出
    execute unless entity @s[tag=PF.Fullset] run particle smoke ~ ~0.1 ~ 0.3 0.2 0.3 0.05 20 normal @a
    execute unless entity @s[tag=PF.Fullset] run particle ash ~ ~0.1 ~ 0.3 0.2 0.3 0.2 30 normal @a
    execute unless entity @s[tag=PF.Fullset] run playsound block.fire.extinguish player @a ~ ~ ~ 0.4 0.7

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,918,3]
    function api:modifier/defense/fire/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,918,3]
    function api:modifier/attack/fire/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,918,3]
    function api:modifier/defense/water/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-039600000003

# フルセット解除
    execute if entity @s[tag=PF.Fullset] run function asset:artifact/0915.flame_hunter_hat/trigger/fullset/dis_equip