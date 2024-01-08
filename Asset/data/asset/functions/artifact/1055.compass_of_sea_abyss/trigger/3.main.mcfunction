#> asset:artifact/1055.compass_of_sea_abyss/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1055.compass_of_sea_abyss/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 重複防止Tagを付与
    tag @s add TB.Modifier

# 演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:artifact/1055.compass_of_sea_abyss/trigger/vfx_compass
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.8 0.8 0
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.8 0.5

# 物理攻撃+10％
    data modify storage api: Argument.UUID set value [I;1,1,1055,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 水攻撃+10％
    data modify storage api: Argument.UUID set value [I;1,1,1055,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 最大体力-20％
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-041f00000001 "1055.MaxHealth" -0.2 multiply_base

# ノクバ耐性+3
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-041f00000001 "1055.KBResist" 0.3 add

# 最大体力の変化を反映するダメージ
    damage @s 0.01