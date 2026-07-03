#> asset:artifact/1078.pigeon_blood/attack_melee/damage.m
#
# ダメージ処理
#
# @input args
#   Min: int
#   Max: int
#   MultiplierResonance: double
#   MultiplierCritical: double
# @within function asset:artifact/1078.pigeon_blood/attack_melee/3.main

# 演出
    # 乱数
        execute store result score $TY.Temp1 Temporary run random value 0..2
    # VFX
        execute if data storage asset:temp TY{VFXCount:0} if score $TY.Temp1 Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/1
        execute if data storage asset:temp TY{VFXCount:0} if score $TY.Temp1 Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/2
        execute if data storage asset:temp TY{VFXCount:0} if score $TY.Temp1 Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/3
        execute if data storage asset:temp TY{VFXCount:1} if score $TY.Temp1 Temporary matches 0 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/4
        execute if data storage asset:temp TY{VFXCount:1} if score $TY.Temp1 Temporary matches 1 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/5
        execute if data storage asset:temp TY{VFXCount:1} if score $TY.Temp1 Temporary matches 2 positioned ^ ^1.2 ^1.2 run function asset:artifact/1078.pigeon_blood/attack_melee/vfx/6
        execute if function asset:artifact/1078.pigeon_blood/predicate/is_critical anchored eyes positioned ^ ^ ^ run particle note ~ ~0.4 ~ 0.22 0 0 1 0 normal @a
        execute if function asset:artifact/1078.pigeon_blood/predicate/is_critical at @e[type=#lib:living,tag=Victim,distance=..10] run particle end_rod ~ ~1.2 ~ 0 0 0 0.25 30 normal @a
    # SFX
        playsound ogg:item.trident.throw1 player @a ~ ~ ~ 0.8 1.1
        playsound ogg:item.trident.throw2 player @a ~ ~ ~ 0.8 0.8
    # リセット
        scoreboard players reset $TY.Temp1 Temporary
# ダメージ
# Damage(e2) = rnd( 380, 700 ) * e2 * ( MultiplierCritical || 1 ) * ( MultiplierResonance || 1 )
    # 基礎値
        $execute store result score $TY.Temp1 Temporary run random value $(Min)00..$(Max)00
    # クリティカル補正
        scoreboard players set $TY.Temp2 Temporary 100
        execute if function asset:artifact/1078.pigeon_blood/predicate/is_critical store result score $TY.Temp2 Temporary run data get storage asset:temp TY.Const.Damage.MultiplierCritical 100
        scoreboard players operation $TY.Temp1 Temporary *= $TY.Temp2 Temporary
        scoreboard players operation $TY.Temp1 Temporary /= $100 Const
    # 共鳴補正
        scoreboard players set $TY.Temp3 Temporary 100
        execute if function asset:artifact/1078.pigeon_blood/predicate/has_resonance store result score $TY.Temp3 Temporary run data get storage asset:temp TY.Const.Damage.MultiplierResonance 100
        scoreboard players operation $TY.Temp1 Temporary *= $TY.Temp3 Temporary
        scoreboard players operation $TY.Temp1 Temporary /= $100 Const
    # 処理
        execute store result storage api: Argument.Damage double 0.01 run scoreboard players get $TY.Temp1 Temporary
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
        function api:damage/modifier
        execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6,limit=1] run function api:damage/
        function api:damage/reset
# 共鳴攻撃
    function asset:artifact/1078.pigeon_blood/attack_melee/summon_resonance_attack
# リセット
    scoreboard players reset $TY.Temp1 Temporary
    scoreboard players reset $TY.Temp2 Temporary
    scoreboard players reset $TY.Temp3 Temporary
