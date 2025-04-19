#> asset:effect/0245.flame_hunter_attire/fullset/dis_equip
# @within function
#   asset:effect/0245.flame_hunter_attire/re-given/
#   asset:effect/0245.flame_hunter_attire/remove/

# 演出
    particle smoke ~ ~1.2 ~ 0.4 0.4 0.4 0.05 80 normal @a
    particle ash ~ ~1.2 ~ 0.4 0.4 0.4 0.2 200 normal @a
    playsound block.fire.extinguish player @a ~ ~ ~ 0.4 0.7

# 補正
    # 火攻撃+10%
        data modify storage api: Argument.UUID set value [I;1,3,245,0]
        function api:modifier/attack/fire/remove

    # 火耐性+10%
        data modify storage api: Argument.UUID set value [I;1,3,245,0]
        function api:modifier/defense/fire/remove

    # 移動速度+10%
        attribute @s generic.movement_speed modifier remove 1-0-3-0-f500000000
