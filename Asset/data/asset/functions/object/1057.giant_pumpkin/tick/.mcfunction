#> asset:object/1057.giant_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1057/tick

#> Private
# @private
    #declare tag Targetable

# 前方の敵の方へ優先して追尾させる
    execute if entity @s[tag=!2031.HighSpeedSpinning] positioned ^ ^ ^15 run tag @e[type=#lib:living,tag=Enemy,distance=..15] add Targetable
    execute if entity @s[tag=!2031.HighSpeedSpinning] facing entity @e[type=#lib:living,tag=Targetable,distance=..30,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=!2031.HighSpeedSpinning] run tag @e[type=#lib:living,tag=Targetable,distance=..30] remove Targetable

# 継承
    execute at @s run function asset:object/super.tick

# Tag削除
    tag @e[type=#lib:living,tag=DXYZ] remove DXYZ
