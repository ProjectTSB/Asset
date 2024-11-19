#> asset:artifact/1033.thelema_of_blue_sea/trigger/4.persuit
#
# 追撃時に行う処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/3.main

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $3200

# 最大体力取得
    function api:modifier/max_health/get

# 3回目の攻撃の時、追撃用オブジェクトを召喚
# Rotation、SwordCount、Damage、UserIDをFieldOverrideへ入れる
# SwordCountは最大HPの5%(int)として召喚

# 与ダメージを計算しフィールドへ
# 最大体力の200%、最大320
    scoreboard players set $3200 Temporary 3200
    execute store result score $Damage Temporary run data get storage api: Return.MaxHealth 20
    execute store result storage api: Argument.FieldOverride.Damage double 0.1 run scoreboard players operation $Damage Temporary < $3200 Temporary

# 召喚
    data modify storage api: Argument.ID set value 1039
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.SwordCount int 1 run data get storage api: Return.MaxHealth 0.05
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=#lib:living,tag=Victim,distance=..6] run function api:object/summon

# リセット
    scoreboard players reset $3200 Temporary
    scoreboard players reset $Damage Temporary
