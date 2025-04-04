#> asset:artifact/1253.wool_shooter/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1253.wool_shooter/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 破壊可能エリアでのみ使用可能
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here

# 8個以上羊毛を持ってるかチェック
    execute store result score @s[tag=CanUsed] Temporary run clear @s #wool 0
    execute if score @s[tag=CanUsed] Temporary matches ..7 run tag @s remove CanUsed
    execute if predicate api:area/is_breakable if score @s Temporary matches ..7 run function lib:message/artifact/dont_have_require_items

# 羊毛が24個を切っていた場合警告
    execute if score @s[tag=CanUsed] Temporary matches 8..24 run tellraw @s[tag=CanUsed] {"text":"注意：羊毛が残り少ないです！","color":"red","bold":true}

# リセット
    scoreboard players reset @s Temporary

# 矢がクリティカルか見る
    execute if entity @e[type=#arrows,tag=ShotArrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] run tag @s add YT.FullCharge
# 矢を消す
    kill @e[type=#arrows,tag=ShotArrow,distance=..5]
# 発動しなかったら矢を返す
    execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:arrow",Count:1b}}
    execute if entity @s[tag=CanUsed] run function asset:artifact/1253.wool_shooter/trigger/3.main

# タグ消す
    tag @s remove YT.FullCharge
