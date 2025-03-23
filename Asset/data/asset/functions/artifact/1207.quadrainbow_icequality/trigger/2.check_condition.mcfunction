#> asset:artifact/1207.quadrainbow_icequality/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/1.trigger

#> evaluation
# @within
#   function asset:artifact/1207.quadrainbow_icequality/trigger/solve_inequality
#   function asset:artifact/1207.quadrainbow_icequality/trigger/2.check_condition
    #declare score_holder $XJ.HealthPer
    #declare score_holder $XJ.MPPer
    #declare score_holder $XJ.Eval

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    function asset:artifact/1207.quadrainbow_icequality/trigger/solve_inequality
    execute if entity @s[tag=CanUsed] if score $XJ.Eval Temporary <= $XJ.HealthPer Temporary run tellraw @s [{"text": "発動条件を満たしていません: ","color":"red"},{"score":{"name": "$XJ.HealthPer","objective": "Temporary"},"color":"red"},{"text": " ≰ ","color":"red"},{"score":{"name": "$XJ.MPPer","objective": "Temporary"},"color":"red"},{"text":"^2 * -0.012 + 130","color":"red"}]
    execute if score $XJ.Eval Temporary <= $XJ.HealthPer Temporary run tag @s remove CanUsed
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1207.quadrainbow_icequality/trigger/3.main

# reset
    scoreboard players reset $XJ.HealthPer Temporary
    scoreboard players reset $XJ.MPPer Temporary
    scoreboard players reset $XJ.Eval Temporary
