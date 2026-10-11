#> asset:object/1200.starlight_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1200/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転させる
    execute unless data storage asset:context this{SpinCount:0} if score @s General.Object.Tick matches 3.. store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} run function asset:object/1200.starlight_circle/tick/spin

# 縮小が完了したら消滅させる
    execute if data storage asset:context this{SpinCount:0} if score @s General.Object.Tick matches 12.. run function asset:object/1200.starlight_circle/tick/kill
