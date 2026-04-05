#> asset:mob/0261.laser_eye_mk2/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/261/get_speed

# 近い場合
    execute if data storage asset:context this{Distance:"Near"} unless data storage asset:context this{PreDistance:"Near"} run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.SpeedType.Near

# 遠い場合
    execute if data storage asset:context this{Distance: "Far"} unless data storage asset:context this{PreDistance:" Far"} run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.SpeedType.Far

# super.get_speed
    function asset:mob/super.method

# 近い場合、フィールドをマイナス倍する
    execute if data storage asset:context this{Distance:"Near"} store result storage asset:context this.Speed double -0.01 run data get storage asset:context this.Speed 100
