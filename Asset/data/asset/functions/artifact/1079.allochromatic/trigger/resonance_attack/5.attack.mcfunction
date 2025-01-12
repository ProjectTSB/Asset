#> asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
#
# 攻撃する
#
# @within function asset:artifact/1079.allochromatic/trigger/resonance_attack/4.main

#> Private
# @private
    #declare score_holder $Random

# 回数をカウント
# 実行者はkillされるのでreset不要
    scoreboard players add @s TZ.Count 1

# 0~2の乱数を求める
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# 演出
    execute positioned ^ ^ ^-0.3 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/square
    execute if entity @s[scores={TZ.Count=1}] if score $Random Temporary matches 0 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash1
    execute if entity @s[scores={TZ.Count=1}] if score $Random Temporary matches 1 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash2
    execute if entity @s[scores={TZ.Count=1}] if score $Random Temporary matches 2 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash3
    execute if entity @s[scores={TZ.Count=2}] if score $Random Temporary matches 0 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash4
    execute if entity @s[scores={TZ.Count=2}] if score $Random Temporary matches 1 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash5
    execute if entity @s[scores={TZ.Count=2}] if score $Random Temporary matches 2 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash6

    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 0.5 1.1
    playsound ogg:item.trident.throw2 player @a ~ ~ ~ 0.5 0.8

# 前方の敵のみをターゲットにする
# ちょっとくらい後ろなら当たる
    tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2.8] add Target
    execute positioned ^ ^ ^-1.4 run tag @e[type=#lib:living,tag=Target,distance=..1.2] remove Target

# ダメージ
# Targetの内最寄りの1体が対象
    data modify storage api: Argument.Damage set value 150
    data modify storage api: Argument.AttackType set value "Physical"
    execute at @a if score @s TZ.OwnerID = @p UserID as @p run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..2.8,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,tag=Target,distance=..2.8] remove Target
    scoreboard players reset $Random Temporary
