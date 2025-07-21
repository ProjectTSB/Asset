#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/m
#
# @input args:
#   ID : int
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/

# 自身のIDがなければ自身にTargetTagを付与
    $execute unless data storage asset:context this.HitList.$(ID) run tag @s add RW.TargetEntity

# データがなければ追加しておく
    $execute unless data storage asset:context this.HitList.$(ID) run data modify storage asset:context this.HitList.$(ID) set value 0b
