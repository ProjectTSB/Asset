#> asset:artifact/0529.safety_helmet/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/529/damage/

# 演出
    playsound entity.ender_eye.death player @p ~ ~ ~ 1.0 1.0

# 耐性付与
    effect give @s resistance 3 1
