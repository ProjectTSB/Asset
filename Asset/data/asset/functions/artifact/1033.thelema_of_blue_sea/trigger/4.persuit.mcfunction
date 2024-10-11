#> asset:artifact/1033.thelema_of_blue_sea/trigger/4.persuit
#
# 追撃時に行う処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/3.main

# 最大体力取得
    function api:modifier/max_health/get

# 3回目の攻撃の時、追撃用オブジェクトを召喚
# Rotation、MaxHealth、UserIDをFieldOverrideへ入れる
    data modify storage api: Argument.ID set value 1039
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.MaxHP set from storage api: Return.MaxHealth
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=#lib:living,tag=Victim,distance=..6] run function api:object/summon
