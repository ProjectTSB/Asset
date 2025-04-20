#> asset:effect/0275.moon_blessing/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0275.moon_blessing/_/tick

#> Private
# @private
    #declare score_holder $CurrentBarrierAmount
    #declare score_holder $MaxBarrierAmount

# 開始1tick目の処理、
    execute unless data storage asset:context this.RegenTick run data modify storage asset:context this.RegenTick set from storage asset:context this.RegenInterval

# 諸々取得
    execute store result score $CurrentBarrierAmount Temporary run function asset:effect/0275.moon_blessing/barrier/get
    execute store result score $MaxBarrierAmount Temporary run data get storage asset:context this.MaxBarrierAmount 10

# 最大なら Tick リセット、でなければ Tick デクリメント
    execute if score $CurrentBarrierAmount Temporary = $MaxBarrierAmount Temporary run data modify storage asset:context this.RegenTick set from storage asset:context this.RegenInterval
    execute unless score $CurrentBarrierAmount Temporary = $MaxBarrierAmount Temporary store result storage asset:context this.RegenTick int 0.9999999999 run data get storage asset:context this.RegenTick

# Tick が 0 ならバリアを加算する
    execute if data storage asset:context this{RegenTick:0} run scoreboard players add $CurrentBarrierAmount Temporary 20
    execute if data storage asset:context this{RegenTick:0} run execute if score $MaxBarrierAmount Temporary < $CurrentBarrierAmount Temporary run scoreboard players operation $CurrentBarrierAmount Temporary = $MaxBarrierAmount Temporary
    execute if data storage asset:context this{RegenTick:0} run function asset:effect/0275.moon_blessing/barrier/add.m {AmountSource:"scoreboard players get $CurrentBarrierAmount Temporary"}
    execute if data storage asset:context this{RegenTick:0} run data modify storage asset:context this.RegenTick set from storage asset:context this.RegenInterval

# リセット
    scoreboard players reset $CurrentBarrierAmount Temporary
    scoreboard players reset $MaxBarrierAmount Temporary
