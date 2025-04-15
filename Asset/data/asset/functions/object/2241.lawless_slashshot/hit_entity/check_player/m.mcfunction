#> asset:object/2241.lawless_slashshot/hit_entity/check_player/m
#
# @input args:
#   ID : int
# @within function asset:object/2241.lawless_slashshot/hit_entity/check_player/

# 自身のIDがなければ自身にTargetTagを付与
    $execute unless data storage asset:context this.HitList.$(ID) run tag @s add 2241.TargetEntity

# データがなければ追加しておく
    $execute unless data storage asset:context this.HitList.$(ID) run data modify storage asset:context this.HitList.$(ID) set value 0b
