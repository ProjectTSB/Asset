#> asset:object/1195.creeper_glove_right/tick/empower
#
# 強化する 振りの各時間を強化後の値へ変える
#
# @within function asset:object/1195.creeper_glove_right/tick/main

# 強化済みにする
    data modify storage asset:context this.Empowered set value true

# 振りの各時間を強化後の値へ変える
    data modify storage asset:context this.SwingCooldown set from storage asset:context this.EmpoweredSwingCooldown
    data modify storage asset:context this.ReturnDuration set from storage asset:context this.EmpoweredReturnDuration
    data modify storage asset:context this.HitHoldDuration set from storage asset:context this.EmpoweredHitHoldDuration
    data modify storage asset:context this.SwingThreshold set from storage asset:context this.EmpoweredSwingThreshold

# 演出
    playsound entity.creeper.primed player @a ~ ~ ~ 0.8 0.8
