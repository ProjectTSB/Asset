#> asset:artifact/0248.bow_of_vinderre/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0248.bow_of_vinderre/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

    execute unless entity @s[tag=CanUsed] run kill @e[type=#arrows,tag=ShotArrow,distance=..5]
    execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},PickupDelay:0s}
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0248.bow_of_vinderre/trigger/3.main
