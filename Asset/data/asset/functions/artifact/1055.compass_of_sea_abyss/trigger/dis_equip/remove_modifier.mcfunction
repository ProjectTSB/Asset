#> asset:artifact/1055.compass_of_sea_abyss/trigger/dis_equip/remove_modifier
#
# 補正を削除
#
# @within function asset:artifact/1055.compass_of_sea_abyss/trigger/dis_equip/main

# 重複防止Tagを削除
    tag @s remove TB.Modifier

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,1055,0]
    function api:modifier/attack/physical/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,1055,0]
    function api:modifier/attack/water/remove

# 最大体力
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-041f00000001

# ノクバ耐性
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-041f00000001