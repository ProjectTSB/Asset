#> asset:artifact/1163.rail_shooter/shot/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1163/shot/check

# 矢がクリティカルか見る
    execute if entity @e[type=#arrows,tag=ShotArrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] run tag @s add WB.FullCharge
# 矢を消す
    kill @e[type=#arrows,tag=ShotArrow,distance=..5]
# 発動しなかったら矢を返す
    execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:arrow",Count:1b}}
