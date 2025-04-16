#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/check_hit/m
#
# @input args:
#   ID : int
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/check_hit/

# IDがなければTagを付与
    $execute unless data storage asset:context this.HitList.$(ID) run tag @s add 4V.Hit

# IDがなければ追加
    $execute unless data storage asset:context this.HitList.$(ID) run data modify storage asset:context this.HitList.$(ID) set value 0b
