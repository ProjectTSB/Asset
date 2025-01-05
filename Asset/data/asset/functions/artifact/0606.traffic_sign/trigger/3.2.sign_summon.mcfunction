#> asset:artifact/0606.traffic_sign/trigger/3.2.sign_summon
#
# 道路標識を召喚
#
# @within function asset:artifact/0606.traffic_sign/trigger/3.main

# 召喚
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["GU.Sign.Init","GU.Sign"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,20f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:606}}}

# 若干斜めにする
    execute store result entity @e[type=item_display,tag=GU.Sign.Init,distance=..0.01,limit=1] Rotation[0] float 1 run function lib:random/
    execute store result score $GU.Temp Temporary run function lib:random/
    scoreboard players operation $GU.Temp Temporary %= $31 Const
    data modify storage asset:temp GU.Temp set value {left_rotation:{axis:[0,0,1],angle:0f},right_rotation:[0f,0f,0f,1f],translation:[0f,20f,0f],scale:[1f,1f,1f]}
    execute store result storage asset:temp GU.Temp.left_rotation.angle float 0.0175 run scoreboard players remove $GU.Temp Temporary 15
    data modify entity @e[type=item_display,tag=GU.Sign.Init,distance=..0.01,limit=1] transformation set from storage asset:temp GU.Temp

# スコアセット
    scoreboard players operation $GU.OwnerId Temporary = @s UserID 
    execute as @e[type=item_display,tag=GU.Sign.Init,distance=..0.01,limit=1] run scoreboard players operation @s GU.OwnerID = $GU.OwnerId Temporary
    execute as @e[type=item_display,tag=GU.Sign.Init,distance=..0.01,limit=1] run scoreboard players set @s GU.Count 0

# スケジュール起動
    schedule function asset:artifact/0606.traffic_sign/trigger/4.schedule 1t

# スコアリセット
    scoreboard players reset @s GU.Count
    scoreboard players reset $GU.Temp Temporary
    scoreboard players reset $GU.OwnerId Temporary
    data remove storage asset:temp GU.Temp

# タグ外し
    tag @e[type=item_display,tag=GU.Sign.Init,distance=..0.01,limit=1] remove GU.Sign.Init
