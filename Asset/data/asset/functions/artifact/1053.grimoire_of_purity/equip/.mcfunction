#> asset:artifact/1053.grimoire_of_purity/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1053/equip/


# 演出
    execute positioned ~ ~1.3 ~ rotated ~ ~45 run function asset:artifact/1053.grimoire_of_purity/equip/vfx
    execute positioned ~ ~1.3 ~ rotated ~ ~-45 run function asset:artifact/1053.grimoire_of_purity/equip/vfx
    playsound block.beacon.power_select player @a ~ ~1.3 ~ 1 1.3
    playsound block.amethyst_block.resonate player @a ~ ~1.3 ~ 4 1.5
    playsound block.bell.resonate player @a ~ ~ ~ 3 2
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3 1.7

# 補正を追加する
    # 基礎攻撃力 +20%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value 0.20
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/base/add
    # 火属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.30
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/fire/add
    # 水属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.30
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/water/add
    # 雷属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.30
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/thunder/add
