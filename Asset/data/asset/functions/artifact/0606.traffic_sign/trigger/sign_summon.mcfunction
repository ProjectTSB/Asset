#> asset:artifact/0606.traffic_sign/trigger/sign_summon
#
# 道路標識を召喚
#
# @within function asset:artifact/0606.traffic_sign/trigger/3.main

# 召喚
    data modify storage api: Argument.ID set value 1012
    data modify storage api: Argument.FieldOverride.Damage set value {Min:150,Max:250}
    execute store result storage api: Argument.FieldOverride.Angle float 0.0175 run random value -15..15
    execute store result storage api: Argument.FieldOverride.Rotation0 float 1 run random value 0..359
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# リセット
    scoreboard players reset @s GU.Count 
