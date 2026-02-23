#> asset:object/1057.giant_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1057/tick

#> Private
# @private
    #declare tag Targetable

# 高速回転状態じゃない時、前方の敵の方を向かせる
    #execute if entity @s[tag=!2031.HighSpeedSpinning] positioned ^ ^ ^15 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..15] add Targetable
    #execute if entity @s[tag=!2031.HighSpeedSpinning] facing entity @e[type=#lib:living,tag=Targetable,distance=..30,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    #execute if entity @s[tag=!2031.HighSpeedSpinning] run tag @e[type=#lib:living,tag=Targetable,distance=..30] remove Targetable

# 高速回転状態の時、前方の敵に誘導させる
    execute if entity @s[tag=2031.HighSpeedSpinning] positioned ^ ^ ^15 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..15] add Targetable
    execute if entity @s[tag=2031.HighSpeedSpinning] facing entity @e[type=#lib:living,tag=Targetable,distance=..30,sort=nearest,limit=1] feet positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ 0
    execute if entity @s[tag=2031.HighSpeedSpinning] run tag @e[type=#lib:living,tag=Targetable,distance=..30] remove Targetable

# 下に落ちる
    execute at @s if block ~ ~-1.7 ~ #lib:no_collision/without_fluid run tp @s ~ ~-0.2 ~
    execute at @s if block ~ ~-1.7 ~ #lib:no_collision/without_fluid run tp @s ~ ~-0.2 ~
    execute at @s if block ~ ~-1.7 ~ #lib:no_collision/without_fluid run tp @s ~ ~-0.2 ~

# 継承
    execute at @s run function asset:object/super.tick


# Tag削除
    tag @e[type=#lib:living,tag=DXYZ] remove DXYZ
