#> asset:object/2212.eclael_upper_shot/tick/prediction_text
#
# Objectのtick時の処理
#
# @within asset:object/2212.eclael_upper_shot/tick/

# 計算
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $10 Const

# 予告線表示
    execute if score $Interval Temporary matches 1 run data modify entity @s text set value '[{"text":" ","color":"#74B0AC","bold":true},{"text":"  >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#74B0AC","bold":true},{"text":"  >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#74B0AC","bold":true},{"text":"  >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#74B0AC","bold":true},{"text":"  >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#74B0AC","bold":true},{"text":"  >","color":"#00FFA2","bold":true},{"text":">","color":"#74B0AC","bold":true}]'
    execute if score $Interval Temporary matches 2 run data modify entity @s text set value '[{"text":"   >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#00FFA2","bold":true}]'
    execute if score $Interval Temporary matches 5 run data modify entity @s text set value '[{"text":" ","color":"#00FFA2","bold":true},{"text":"  >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#00FFA2","bold":true},{"text":"  >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#00FFA2","bold":true},{"text":"  >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#00FFA2","bold":true},{"text":"  >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true},{"text":"\\n\\n"},{"text":" ","color":"#00FFA2","bold":true},{"text":"  >","color":"#74B0AC","bold":true},{"text":">","color":"#00FFA2","bold":true}]'
    execute if score $Interval Temporary matches 6 run data modify entity @s text set value '[{"text":"   >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#74B0AC","bold":true},{"text":"\\n\\n"},{"text":"   >>","color":"#74B0AC","bold":true}]'

# 終了
    scoreboard players reset $Interval Temporary
