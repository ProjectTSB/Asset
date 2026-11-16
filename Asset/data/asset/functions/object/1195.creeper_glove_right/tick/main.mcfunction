#> asset:object/1195.creeper_glove_right/tick/main
#
# 行動のメイン処理
#
# @within function asset:object/1195.creeper_glove_right/tick/

#> Private
# @private
    #declare score_holder $LifeTime

# 存在時間が切れたか
    execute store result score $LifeTime Temporary run data get storage asset:context this.LifeTime
    execute store success score $1195.Expired Temporary if score @s General.Object.Tick >= $LifeTime Temporary
    scoreboard players reset $LifeTime Temporary
# 攻撃中でなければ即消滅する 攻撃中は爆発の直後に消える
    execute if score $1195.Expired Temporary matches 1 unless data storage asset:context this{State:"swing_out"} run return run function asset:object/1195.creeper_glove_right/kill/

# 視点を振ったかを検出する
    function asset:object/1195.creeper_glove_right/tick/swing/detect

# 処理前の状態で振り分ける
    data modify storage asset:temp 1195.State set from storage asset:context this.State
    execute if data storage asset:temp 1195{State:"idle"} run function asset:object/1195.creeper_glove_right/tick/swing/idle
    execute if data storage asset:temp 1195{State:"swing_out"} run function asset:object/1195.creeper_glove_right/tick/swing/out
    execute if data storage asset:temp 1195{State:"hit_hold"} run function asset:object/1195.creeper_glove_right/tick/swing/hold
    execute if data storage asset:temp 1195{State:"swing_back"} run function asset:object/1195.creeper_glove_right/tick/swing/back
    execute if data storage asset:temp 1195{State:"cooldown"} run function asset:object/1195.creeper_glove_right/tick/swing/cooldown
