#> asset:artifact/1607.dimension_gate/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1607.dimension_gate/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# fail
    execute if entity @s[tag=!CanUsed] run return fail

# 前方に敵がいるかどうか
    function asset:artifact/1607.dimension_gate/trigger/2.check_condition/find_enemy/

# ターゲットがいなければCanUsedを削除
    execute unless entity @e[type=#lib:living_without_player,tag=Target,distance=..20] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run function asset:artifact/1607.dimension_gate/trigger/2.check_condition/reset
    execute if entity @s[tag=!CanUsed] run return fail

# ターゲットの背後がブロックに埋まっている場合、CanUsedを削除
    execute positioned as @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] rotated ~ 0 unless function asset:artifact/1607.dimension_gate/trigger/2.check_condition/check_block/check_safe run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run function asset:artifact/1607.dimension_gate/trigger/2.check_condition/reset
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1607.dimension_gate/trigger/3.main

# リセット
    function asset:artifact/1607.dimension_gate/trigger/2.check_condition/reset
