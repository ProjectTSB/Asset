#> asset:artifact/1217.archer_fish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1217.archer_fish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.15 2
    playsound minecraft:entity.cod.flop player @a ~ ~ ~ 1 1

# ターゲットとなりうるentityを探す
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1217.archer_fish/trigger/search_target

# Objectのデータ設定
    # 非フルチャ時
        execute if entity @s[tag=!XT.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 1
        execute if entity @s[tag=!XT.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 50

    # フルチャ時
        execute if entity @s[tag=XT.FullCharge] run data modify storage api: Argument.FieldOverride.StepPerTick set value 2
        execute if entity @s[tag=XT.FullCharge] run data modify storage api: Argument.FieldOverride.Damage set value 90

# ターゲットのIDがあれば入れておく
    execute if score $XT.TargetMobUUID Temporary matches -2147483648..2147483647 store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get $XT.TargetMobUUID Temporary

# サケクリティカル
    execute if predicate lib:random_pass_per/4 run data modify storage api: Argument.FieldOverride.SalmonCrit set value true
    execute if data storage api: Argument.FieldOverride{SalmonCrit:true} run data modify storage api: Argument.FieldOverride.CMD set value 20514

# Object召喚
    data modify storage api: Argument.ID set value 1111
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

# フルチャなら魚群も召喚
    execute if entity @s[tag=XT.FullCharge] run function asset:artifact/1217.archer_fish/trigger/summon_school_of_fish

# リセット
    scoreboard players reset $XT.TargetMobUUID Temporary
