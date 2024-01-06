#> asset:artifact/0902.fire_heart_accessories/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0902.fire_heart_accessories/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
#> health
# @private
    #declare score_holder $P2.Count
    #declare score_holder $P2.MaxHP

# 個数を取得
    execute store result score $P2.Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:902}}}]
    scoreboard players remove $P2.Count Temporary 1
    scoreboard players operation $P2.Count Temporary *= $5 Const
    scoreboard players add $P2.Count Temporary 10

# 与えるダメージ = 最大体力 × {(個数 - 1) × 0.5 + 1 } × 2
    execute store result score $P2.MaxHP Temporary run attribute @s minecraft:generic.max_health get 2
    scoreboard players operation $P2.MaxHP Temporary *= $P2.Count Temporary
    scoreboard players operation $P2.MaxHP Temporary /= $10 Const

# ダメージ
    # 与えるダメージ
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $P2.MaxHP Temporary
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 炎属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] at @s run function lib:damage/

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle flame ~ ~1.2 ~ 0.3 0.3 0.3 0.05 30 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle dust 100000000 1 100000000 1 ~ ~1.5 ~ 0.5 0.5 0.5 0 50 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 1 1.2 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound block.beacon.activate player @a[distance=..16] ~ ~ ~ 0.8 2 0

# リセット
    scoreboard players reset $P2.MaxHP Temporary
    scoreboard players reset $P2.Count Temporary
    function lib:damage/reset