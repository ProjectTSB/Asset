#> asset:mob/0363.white_spellbook/set_speed/1
#
#
#
# @within function asset:mob/0363.white_spellbook/tick/

# 速度・追尾ともに強く設定
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Fast
    data modify storage asset:context this.Rotate set from storage asset:context this.RotatePower.Strong
