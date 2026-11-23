#> asset:object/1219.font_animation/tick
#
# 初期フレームを1tick目に表示し、2tick目に切り替えて3tick目に破棄
#
# @within function asset:object/alias/1219/tick

# フレーム1にも幅1の空白を足して行幅を66に揃える
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 2 run data modify entity @s text set value '[{"text":"1","font":"object/1219"},{"text":"\\u0001","font":"space"}]'
    execute if score @s General.Object.Tick matches 3 run kill @s
