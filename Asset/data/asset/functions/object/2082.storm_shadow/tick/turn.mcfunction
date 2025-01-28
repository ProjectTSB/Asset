#> asset:object/2082.storm_shadow/tick/turn
#
# 
#
# @within function asset:object/2082.storm_shadow/tick/

# 目標の方を向いていたらリターン(目標との角度誤差7度以内ならreturn)
        #$execute facing $(x) $(y) $(z) positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 if entity @s[distance=..128] run say return
    $execute facing $(x) $(y) $(z) positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 if entity @s[distance=..128] run return 0

# 目標座標を向く(arctan(0.14) = 8度/tickぐらいの速度で旋回)
    $execute at @s positioned ^ ^ ^1000 facing $(x) $(y) $(z) positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.14 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
        #$execute at @s positioned ^ ^ ^1000 facing $(x) $(y) $(z) positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.05 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
