#> asset:object/2209.eclael_field_slash/tick/prediction_text
#
# Objectのtick時の処理
#
# @within asset:object/2209.eclael_field_slash/tick/

# 計算
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $20 Const

# 予告線表示
    execute if score $Interval Temporary matches 1 run data modify entity @s text set value '[{"text":"<","color":"#74B0AC","bold":true},{"text":"< >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#74B0AC","bold":true},{"text":"< >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#74B0AC","bold":true},{"text":"< >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#74B0AC","bold":true},{"text":"< >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#74B0AC","bold":true},{"text":"< >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true}]'
    execute if score $Interval Temporary matches 3 run data modify entity @s text set value '[{"text":"<< >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#00FFA2","bold":true}]'
    execute if score $Interval Temporary matches 5 run data modify entity @s text set value '[{"text":"<","color":"#00FFA2","bold":true},{"text":"< >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#00FFA2","bold":true},{"text":"< >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#00FFA2","bold":true},{"text":"< >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#00FFA2","bold":true},{"text":"< >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"<","color":"#00FFA2","bold":true},{"text":"< >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true}]'
    execute if score $Interval Temporary matches 7 run data modify entity @s text set value '[{"text":"<< >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"<< >>","color":"#74B0AC","bold":true}]'
