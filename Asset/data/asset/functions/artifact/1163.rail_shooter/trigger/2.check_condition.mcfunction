#> asset:artifact/1163.rail_shooter/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1163.rail_shooter/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 矢がクリティカルか見る
    execute if entity @e[type=#arrows,tag=ShotArrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] run tag @s add WB.FullCharge
# 矢を消す
    kill @e[type=#arrows,tag=ShotArrow,distance=..5]
# 発動しなかったら矢を返す
    execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:arrow",Count:1b}}
    execute if entity @s[tag=CanUsed] run function asset:artifact/1163.rail_shooter/trigger/3.main

# タグ消す
    tag @s remove WB.FullCharge
