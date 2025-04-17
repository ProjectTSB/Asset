#> asset:artifact/0816.fur_coat_of_firerat/trigger/fullset/equip/
#
# フルセット装備時の処理
#
# @within function
#   asset:artifact/0816.fur_coat_of_firerat/trigger/3.main
#   asset:artifact/0817.dragons_neck_ball/trigger/3.main
#   asset:artifact/0818.bhuddas_bowl/trigger/3.main
#   asset:artifact/0819.swallows_cowry/trigger/3.main

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add
# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add
# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    data modify storage api: Argument.Amount set value 0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/fall_resistance/add

# 音
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 1 1
    playsound ogg:ambient.nether.crimson_forest.shine1 player @a ~ ~ ~ 1 2
