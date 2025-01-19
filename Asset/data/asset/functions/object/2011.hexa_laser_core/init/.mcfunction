#> asset:object/2011.hexa_laser_core/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2011/init

# 位置調整
    tp @s ~ ~ ~ 0 90

# UUIDを設定
    execute store result score @s 2011.Dummy.UUID run random value 0..2147483646

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2010
    execute rotated ~ 0 positioned ^ ^ ^0.01 run function api:object/summon
    execute rotated ~ 0 positioned ^ ^ ^0.01 run scoreboard players operation @e[type=item_display,tag=2010.Laser,distance=..0.001,limit=1] 2011.Dummy.UUID = @s 2011.Dummy.UUID

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2010
    execute rotated ~120 0 positioned ^ ^ ^0.01 run function api:object/summon
    execute rotated ~120 0 positioned ^ ^ ^0.01 run scoreboard players operation @e[type=item_display,tag=2010.Laser,distance=..0.001,limit=1] 2011.Dummy.UUID = @s 2011.Dummy.UUID

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2010
    execute rotated ~-120 0 positioned ^ ^ ^0.01 run function api:object/summon
    execute rotated ~-120 0 positioned ^ ^ ^0.01 run scoreboard players operation @e[type=item_display,tag=2010.Laser,distance=..0.001,limit=1] 2011.Dummy.UUID = @s 2011.Dummy.UUID
