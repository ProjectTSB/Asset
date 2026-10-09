#> asset:artifact/0468.raging_demon/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0468.raging_demon/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# CanUsedでなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# 周囲10M以内に体力割合が一定以下の敵がいるか確認
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..10] run function asset:artifact/0468.raging_demon/trigger/2.check_condition/check_health_per
    execute unless entity @e[type=#lib:living_without_player,tag=D0.Target,distance=..10] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/0468.raging_demon/trigger/3.main

# リセット
    tag @e[type=#lib:living_without_player,tag=D0.Target,distance=..10] remove D0.Target
