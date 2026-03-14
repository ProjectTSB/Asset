#> asset:object/2049.lightning_magic/tick/text_frame
#
#
#
# @within function asset:object/2049.lightning_magic/tick/on_ground

# デクリメント
    execute store result storage asset:context this.Frame int 0.9999999999 run data get storage asset:context this.Frame

# フレーム反映
    execute if data storage asset:context this{Frame:4} run data modify entity @s text set value '{"text":"1","font":"object/2049/0"}'
    execute if data storage asset:context this{Frame:3} run data modify entity @s text set value '{"text":"2","font":"object/2049/0"}'
    execute if data storage asset:context this{Frame:2} run data modify entity @s text set value '{"text":"3","font":"object/2049/0"}'
    execute if data storage asset:context this{Frame:1} run data modify entity @s text set value '{"text":"4","font":"object/2049/0"}'
    execute if data storage asset:context this{Frame:0} run data modify entity @s text set value '{"text":"0","font":"object/2049/0"}'

# リセット
    execute if data storage asset:context this{Frame:0} run data modify storage asset:context this.Frame set value 5
