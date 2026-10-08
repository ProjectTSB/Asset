#> asset:mob/0369.prominence_spellbook/tick/move_back_mode/start
#
# 後退モード開始処理
#
# @within function asset:mob/0369.prominence_spellbook/tick/

# 後退モードをtrueに
    data modify storage asset:context this.IsMoveBack set value true

# 後退時間を初期化
    data modify storage asset:context this.MoveBackTick._ set from storage asset:context this.MoveBackTick.Max

# 移動速度を変更
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Back

