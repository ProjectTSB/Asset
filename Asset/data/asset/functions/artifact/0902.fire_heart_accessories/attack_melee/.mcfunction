#> asset:artifact/0902.fire_heart_accessories/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/902/attack_melee/

#> val
# @private
    #declare score_holder $P2.Count
    #declare score_holder $P2.MaxHP

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle flame ~ ~1.2 ~ 0.3 0.3 0.3 0.05 30 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle dust 100000000 1 100000000 1 ~ ~1.5 ~ 0.5 0.5 0.5 0 50 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 1 1.2 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound block.beacon.activate player @a[distance=..16] ~ ~ ~ 0.8 2 0

# 個数を取得
    execute store result score $P2.Count Temporary run data get storage asset:context Count
    scoreboard players remove $P2.Count Temporary 1
    scoreboard players operation $P2.Count Temporary *= $5 Const
    scoreboard players add $P2.Count Temporary 10

# 与えるダメージ = 最大体力 × {(個数 - 1) × 0.5 + 1 } × 2
    function api:modifier/max_health/get
    execute store result score $P2.MaxHP Temporary run data get storage api: Return.MaxHealth 2
    scoreboard players operation $P2.MaxHP Temporary *= $P2.Count Temporary
    scoreboard players operation $P2.MaxHP Temporary /= $10 Const

# ダメージ
    # 与えるダメージ
        execute store result storage api: Argument.Damage float 1 run scoreboard players get $P2.MaxHP Temporary
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] at @s run function api:damage/

# リセット
    scoreboard players reset $P2.MaxHP Temporary
    scoreboard players reset $P2.Count Temporary
    function api:damage/reset
