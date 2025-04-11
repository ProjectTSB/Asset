#> asset:object/2186.heiloang_ff_floor/tick/animation
#
# Objectのtick時の処理
#
# @within asset:object/2186.heiloang_ff_floor/tick/

# アニメーション
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $12 Const
    execute if score $Interval Temporary matches 0 run data modify entity @s text set value '{"text":"0","font":"object/2186/0"}'
    execute if score $Interval Temporary matches 3 run data modify entity @s text set value '{"text":"1","font":"object/2186/0"}'
    execute if score $Interval Temporary matches 6 run data modify entity @s text set value '{"text":"2","font":"object/2186/0"}'
    execute if score $Interval Temporary matches 9 run data modify entity @s text set value '{"text":"3","font":"object/2186/0"}'

# リセット
    scoreboard players reset $Interval
