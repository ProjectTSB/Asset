#> asset:artifact/0816.fur_coat_of_firerat/equip/fullset/equip/
#
# フルセット装備時の処理
#
# @within function
#   asset:artifact/0816.fur_coat_of_firerat/equip/
#   asset:artifact/0817.dragons_neck_ball/equip/
#   asset:artifact/0818.bhuddas_bowl/equip/
#   asset:artifact/0819.swallows_cowry/equip/

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add
# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add
# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value -0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/fall_damage/add

# 音
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 1 1
    playsound ogg:ambient.nether.crimson_forest.shine1 player @a ~ ~ ~ 1 2
