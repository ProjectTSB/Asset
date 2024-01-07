#> asset:artifact/0903.magic_water_accessories/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0903.magic_water_accessories/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
#> val
# @private
    #declare score_holder $P3.Count
    #declare score_holder $P3.MaxMP

# VFX
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle rain ~ ~1.2 ~ 0.3 0.3 0.3 0.05 30 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run particle dust 1 100000000 100000000 1 ~ ~1.5 ~ 0.5 0.5 0.5 0 50 normal @a[distance=..16]
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound entity.dolphin.splash player @a[distance=..16] ~ ~ ~ 1 1.2 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] run playsound block.beacon.activate player @a[distance=..16] ~ ~ ~ 0.8 2 0

# 個数を取得
    execute store result score $P3.Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:903}}}]
    scoreboard players remove $P3.Count Temporary 1
    scoreboard players operation $P3.Count Temporary *= $5 Const
    scoreboard players add $P3.Count Temporary 10

# 与えるダメージ = 最大MP × {(個数 - 1) × 0.5 + 1 }
    execute store result score $P3.MaxMP Temporary run function lib:mp/get_max
    scoreboard players operation $P3.MaxMP Temporary *= $P3.Count Temporary
    scoreboard players operation $P3.MaxMP Temporary /= $10 Const

# ダメージ
    # 与えるダメージ
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $P3.MaxMP Temporary
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 水属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10,limit=1] at @s run function lib:damage/

# リセット
    scoreboard players reset $P3.MaxMP Temporary
    scoreboard players reset $P3.Count Temporary
    function lib:damage/reset