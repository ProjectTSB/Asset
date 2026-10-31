#> asset:mob/0186.ferocious_bee/tick/before_charge
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# 演出
    playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1

# 速度設定
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Charge
