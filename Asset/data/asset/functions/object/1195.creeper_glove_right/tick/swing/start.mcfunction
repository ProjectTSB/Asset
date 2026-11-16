#> asset:object/1195.creeper_glove_right/tick/swing/start
#
# 攻撃を始める処理
#
# @within function asset:object/1195.creeper_glove_right/tick/swing/idle

# 状態を攻撃にする
    data modify storage asset:context this.State set value "swing_out"
    data modify storage asset:context this.Step set value 0

# 攻撃開始時に埋まっていれば、抜けるまで埋まり判定を無視する
    data modify storage asset:context this.IgnoreBury set value false
    execute unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context this.IgnoreBury set value true

#vfx
    playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 1.0 1 0.0
