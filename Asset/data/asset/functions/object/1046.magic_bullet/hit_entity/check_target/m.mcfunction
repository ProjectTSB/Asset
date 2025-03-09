#> asset:object/1046.magic_bullet/hit_entity/check_target/m
#
# @input args:
#   ID : int
# @within function asset:object/1046.magic_bullet/hit_entity/check_target/

# 自身のIDがなければ自身にTargetTagを付与
    $execute if entity @s[type=player] unless data storage asset:context this.HitList.Player.$(ID) run tag @s add 1046.TargetEntity
    $execute if entity @s[type=!player] unless data storage asset:context this.HitList.NonPlayer.$(ID) run tag @s add 1046.TargetEntity

# データがなければ追加しておく
    $execute if entity @s[type=player] unless data storage asset:context this.HitList.Player.$(ID) run data modify storage asset:context this.HitList.Player.$(ID) set value 0b
    $execute if entity @s[type=!player] unless data storage asset:context this.HitList.NonPlayer.$(ID) run data modify storage asset:context this.HitList.NonPlayer.$(ID) set value 0b
