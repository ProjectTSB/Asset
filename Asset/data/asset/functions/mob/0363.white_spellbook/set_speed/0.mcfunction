#> asset:mob/0363.white_spellbook/set_speed/0
#
#
#
# @within function
#   asset:mob/0363.white_spellbook/init/
#   asset:mob/0363.white_spellbook/tick/

# 速度・追尾ともに弱く設定
    execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.01 run data get storage asset:context this.MoveSpeed.Slow 100
    data modify storage asset:context this.Rotate set from storage asset:context this.Weak
