#> asset:artifact/0690.steam_core/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/690/equip/


# 演出
    execute rotated ~ 0 positioned ~ ~1.3 ~ run function asset:artifact/0690.steam_core/equip/vfx
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.5 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.7 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.9 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1.1 0

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,690,5]
    data modify storage api: Argument.Amount set value -0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/receive_heal/add
