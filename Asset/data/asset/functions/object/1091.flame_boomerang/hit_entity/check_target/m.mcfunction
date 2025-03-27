#> asset:object/1091.flame_boomerang/hit_entity/check_target/m
#
# @input args:
#   ID : int
# @within function asset:object/1091.flame_boomerang/hit_entity/check_target/

# 自身のIDがなければ自身にTargetTagを付与
    $execute unless data storage asset:context this.HitList.$(ID) run tag @s add 1091.TargetEntity

# データがなければ追加しておく
    $execute unless data storage asset:context this.HitList.$(ID) run data modify storage asset:context this.HitList.$(ID) set value 0b
