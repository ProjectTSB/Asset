#> asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
#
# 攻撃する
#
# @within function asset:artifact/1079.allochromatic/trigger/resonance_attack/4.main

# 回数をカウント
# 実行者はkillされるのでreset不要
    scoreboard players add @s TZ.Count 1

# 演出
    execute positioned ^ ^ ^-0.3 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/square
    execute if entity @s[scores={TZ.Count=1}] run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash3
    execute if entity @s[scores={TZ.Count=2}] run function asset:artifact/1079.allochromatic/trigger/resonance_attack/vfx/slash4
    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 0.5 1.1
    playsound ogg:item.trident.throw2 player @a ~ ~ ~ 0.5 0.8

# 前方の敵のみをターゲットにする
# ちょっとくらい後ろなら当たる
    tag @e[type=#lib:living,tag=Enemy,distance=..2.8] add Target
    execute positioned ^ ^ ^-1.4 run tag @e[type=#lib:living,tag=Target,distance=..1.2] remove Target

# ダメージ
    data modify storage api: Argument.Damage set value 200
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..2.8] run function api:damage/
    function api:damage/reset