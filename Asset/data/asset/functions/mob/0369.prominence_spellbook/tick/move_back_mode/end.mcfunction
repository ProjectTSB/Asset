#> asset:mob/0369.prominence_spellbook/tick/move_back_mode/end
#
# 後退モード終了処理
#
# @within function asset:mob/0369.prominence_spellbook/tick/

# 後退モードをfalseに
    data modify storage asset:context this.IsMoveBack set value false

# 強制終了した場合もあるので0にしておく
    data modify storage asset:context this.MoveBackTick._ set value 0

# 移動速度を変更
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Forward
