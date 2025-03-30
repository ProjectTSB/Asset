#> asset:artifact/0816.fur_coat_of_firerat/trigger/fullset/dis_equip/
#
# フルセット解除時の処理
#
# @within function
#   asset:artifact/0816.fur_coat_of_firerat/trigger/dis_equip/main
#   asset:artifact/0817.dragons_neck_ball/trigger/dis_equip/main
#   asset:artifact/0818.bhuddas_bowl/trigger/dis_equip/main
#   asset:artifact/0819.swallows_cowry/trigger/dis_equip/main

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    function api:modifier/defense/fire/remove
# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    function api:modifier/defense/water/remove
# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    function api:modifier/defense/physical/remove
# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,1,816,0]
    function api:modifier/fall_resistance/remove
