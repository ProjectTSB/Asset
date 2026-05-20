#> asset:artifact/0797.heartbleed/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0797.heartbleed/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# ターゲットがいるかチェック
    execute as @e[type=#lib:living_without_player,tag=Enemy,distance=..5] facing entity @s feet positioned ^ ^ ^4 rotated as @p[tag=this] positioned ^ ^ ^-3 if entity @p[tag=this,distance=..5] run tag @s add M5.Victim
    execute unless entity @e[type=#lib:living,tag=M5.Victim,distance=..5] run tellraw @s [{"text": "攻撃対象がいません。","color":"red"}]
    execute unless entity @e[type=#lib:living,tag=M5.Victim,distance=..5] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0797.heartbleed/trigger/3.main

# reset
    execute as @e[type=#lib:living,tag=M5.Victim,distance=..5] run tag @s remove M5.Victim
