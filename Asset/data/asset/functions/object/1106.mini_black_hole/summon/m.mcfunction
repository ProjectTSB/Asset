#> asset:object/1106.mini_black_hole/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1106.mini_black_hole/summon/

# 元となるEntityを召喚する
# 雪玉をそのまま使ってるのはより厳密な着弾判定のため
    $summon snowball ~ ~ ~ {Rotation:$(Rotation),NoGravity:1b,Silent:1b,Tags:["Uninterferable"],Passengers:[{id:"minecraft:marker",Tags:["ObjectInit"]}],Item:{Count:1b,id:"minecraft:stone",tag:{CustomModelData:20019}}}
