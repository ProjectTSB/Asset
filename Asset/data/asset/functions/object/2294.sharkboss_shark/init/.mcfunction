#> asset:object/2294.sharkboss_shark/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2294/init

tp @s ~ ~ ~ ~ ~
execute facing entity @e[sort=random,limit=1] feet rotated ~ 0 positioned ^7 ^ ^-7 run tp @s ~ ~ ~
execute facing entity @e[sort=random,limit=1] feet rotated ~ 0 positioned ^-6 ^ ^6 run tp @s ~ ~ ~
#execute at @s run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 2
