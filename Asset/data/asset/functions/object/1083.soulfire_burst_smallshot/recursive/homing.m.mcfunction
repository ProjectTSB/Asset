#> asset:object/1083.soulfire_burst_smallshot/recursive/homing.m
#
#
#
# @within function asset:object/1083.soulfire_burst_smallshot/recursive/

# 追尾
    $execute facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,scores={MobUUID=$(TargetID)}] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-5 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
