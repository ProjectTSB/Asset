#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/check_player/m
#
# @input args:
#   ID : int
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/check_player/

# 自身のIDがなければ自身にTargetTagを付与
    $execute unless data storage asset:context this.HitList.$(ID) run tag @s add C5.TargetEntity

# データがなければ追加しておく
    $execute unless data storage asset:context this.HitList.$(ID) run data modify storage asset:context this.HitList.$(ID) set value 0b
