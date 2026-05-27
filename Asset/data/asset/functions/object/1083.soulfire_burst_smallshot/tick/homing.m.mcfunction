#> asset:object/1083.soulfire_burst_smallshot/tick/homing.m
#
#
#
# @within function asset:object/1083.soulfire_burst_smallshot/tick/

#> ターゲッティング阻害タグ
#@private
#declare tag NoHoming

# ターゲットにしない人にタグ付与
    execute positioned ^35 ^ ^ run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..25] add NoHoming
    execute positioned ^-35 ^ ^ run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..25] add NoHoming

# 追尾
    $execute facing entity @e[type=#lib:living,tag=Enemy,tag=!NoHoming,tag=!Uninterferable,distance=..20,scores={MobUUID=$(TargetID)}] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-3 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# タグリセット
    tag @e[type=#lib:living,tag=Enemy,tag=NoHoming,tag=!Uninterferable,distance=..30] remove NoHoming
