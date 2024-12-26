#> asset:object/1053.flamethrower_ball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1053/summon

# 元となるEntityを召喚する
    summon snowball ~ ~ ~ {Silent:1b,Tags:["1053.Snowball","1053.Init"],Passengers:[{id:"minecraft:marker",Tags:["ObjectInit"]}],Item:{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}}
