#> asset:effect/0402.celestial_star/tick/power_up/
#
# 強化段階を1上げ、中央の球を広げて音で知らせる
#
# @within function asset:effect/0402.celestial_star/tick/

#> Private
# @private
    #declare score_holder $402.Stack

# 強化段階を1上げ、次の強化までの時間を設定する
    execute store result score $402.Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:context Stack int 1 run scoreboard players add $402.Stack Temporary 1
    data modify storage asset:context this.PowerUpTick set value 80

# 強化段階に応じて、中央の球の半径を0.3mから0.75mへ広げる
    execute if score $402.Stack Temporary matches 2 run data modify storage asset:context this.Spread set value 0.195d
    execute if score $402.Stack Temporary matches 3 run data modify storage asset:context this.Spread set value 0.24d
    execute if score $402.Stack Temporary matches 4 run data modify storage asset:context this.Spread set value 0.285d
    execute if score $402.Stack Temporary matches 5 run data modify storage asset:context this.Spread set value 0.33d
    execute if score $402.Stack Temporary matches 6 run data modify storage asset:context this.Spread set value 0.375d

# 星の位置で、強化段階が高いほど高い音を鳴らす
    data modify storage asset:temp 402 set from storage asset:context this.Pos
    execute store result storage asset:temp 402.Pitch float 0.3 run scoreboard players get $402.Stack Temporary
    function asset:effect/0402.celestial_star/tick/power_up/vfx.m with storage asset:temp 402

# リセット
    data remove storage asset:temp 402
    scoreboard players reset $402.Stack Temporary
