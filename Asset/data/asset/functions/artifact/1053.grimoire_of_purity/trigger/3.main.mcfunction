#> asset:artifact/1053.grimoire_of_purity/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1053.grimoire_of_purity/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~1.3 ~ rotated ~ ~45 run function asset:artifact/1053.grimoire_of_purity/trigger/vfx
    execute positioned ~ ~1.3 ~ rotated ~ ~-45 run function asset:artifact/1053.grimoire_of_purity/trigger/vfx
    playsound block.beacon.power_select player @a ~ ~1.3 ~ 1 1.3
    playsound block.amethyst_block.resonate player @a ~ ~1.3 ~ 4 1.5
    playsound block.bell.resonate player @a ~ ~ ~ 3 2
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3 1.7

# 補正を追加する
    # 基礎攻撃力 +20%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value 0.10
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/base/add
    # 火属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.25
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/fire/add
    # 水属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.25
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/water/add
    # 雷属性攻撃力 -30%
        data modify storage api: Argument.UUID set value [I;1,1,1053,2]
        data modify storage api: Argument.Amount set value -0.25
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:modifier/attack/thunder/add
