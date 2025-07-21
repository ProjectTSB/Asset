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
    # [{"text":"HP[%]","color":"white"},{"text":"\\u0002","font":"space"},{"text":"≦","color":"white"},{"text":"\\u0002","font":"space"},{"text":"-0.012*MP[%]^2+130を満たす","color":"white"}]
    execute if entity @s[tag=CanUsed] if score $XJ.Eval Temporary <= $XJ.HealthPer Temporary run tellraw @s {"text":"","color":"red","extra":[{"text":"発動条件を満たしていません:"},{"score":{"name":"$XJ.HealthPer","objective":"Temporary"}},{"text":"\\u0002","font":"space"},{"text":"≰"},{"text":"\\u0002","font":"space"},{"text":"-0.012 * "},{"score":{"name":"$XJ.MPPer","objective":"Temporary"}},{"text":"^2 + 130"}]}
    execute if score $XJ.Eval Temporary <= $XJ.HealthPer Temporary run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1207.quadrainbow_icequality/trigger/3.main

# reset
    scoreboard players reset $XJ.HealthPer Temporary
    scoreboard players reset $XJ.MPPer Temporary
    scoreboard players reset $XJ.Eval Temporary
