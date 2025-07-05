#> asset:object/2182.heiloang_thunderball/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2182.heiloang_thunderball/tick/damage

# 消去
    execute if entity @s[tag=2182.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] add 2180.Pillar.Thunder
    execute if entity @s[tag=2182.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] remove 2182.Hit
    execute on passengers run kill @s
    kill @s
