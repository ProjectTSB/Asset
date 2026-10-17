#> asset:effect/0402.celestial_star/tick/vfx/
#
# 星の位置で、上下に漂う中央の球と周りを漂う光を描き、2tickごとに範囲の目印を描く
#
# @within function asset:effect/0402.celestial_star/tick/

#> Private
# @private
    #declare score_holder $402.Phase

# 1秒周期で上下させる角度を、残り時間から -90〜90度の往復として求める
    execute store result score $402.Phase Temporary run data get storage asset:context Duration
    scoreboard players operation $402.Phase Temporary %= $20 Const
    scoreboard players remove $402.Phase Temporary 10
    execute if score $402.Phase Temporary matches ..-1 run scoreboard players operation $402.Phase Temporary *= $-1 Const
    data modify storage asset:temp 402 set from storage asset:context this.Pos
    execute store result storage asset:temp 402.Bob int 18 run scoreboard players remove $402.Phase Temporary 5

# 中央の球と周りを漂う光を描く
    data modify storage asset:temp 402.Spread set from storage asset:context this.Spread
    function asset:effect/0402.celestial_star/tick/vfx/center.m with storage asset:temp 402

# 2tickごとに、範囲の円周上の目印を時計回りに0.5度/tickで回して描く
    execute store result score $402.Phase Temporary run data get storage asset:context Duration
    scoreboard players operation $402.Phase Temporary %= $2 Const
    execute store result storage asset:temp 402.RingYaw float -0.5 run data get storage asset:context Duration
    execute if score $402.Phase Temporary matches 0 run function asset:effect/0402.celestial_star/tick/vfx/ring.m with storage asset:temp 402

# リセット
    data remove storage asset:temp 402
    scoreboard players reset $402.Phase Temporary
