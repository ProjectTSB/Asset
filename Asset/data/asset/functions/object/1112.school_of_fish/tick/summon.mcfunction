#> asset:object/1112.school_of_fish/tick/summon
#
#
#
# @within function asset:object/1112.school_of_fish/tick/spread_summon

#> Private
# @private
    #declare score_holder $1112.TargetMobUUID

# 演出
    playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 0.15 2
    playsound minecraft:entity.cod.flop player @a ~ ~ ~ 1 1

# ターゲットと同じMobUUIDを持つ敵がいるかチェック
    execute if data storage asset:context this.TargetMobUUID store result score $1112.TargetMobUUID Temporary run data get storage asset:context this.TargetMobUUID
    execute if data storage asset:context this.TargetMobUUID as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..25] if score @s MobUUID = $1112.TargetMobUUID Temporary run data modify storage asset:temp Check set value true

# サケクリティカル
    execute if predicate lib:random_pass_per/4 run data modify storage api: Argument.FieldOverride.SalmonCrit set value true
    execute if data storage api: Argument.FieldOverride{SalmonCrit:true} run data modify storage api: Argument.FieldOverride.CMD set value 20514

# 魚を召喚
# ターゲットがいれば引き継いでおく
    data modify storage api: Argument.ID set value 1111
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute if data storage asset:temp {Check:true} run data modify storage api: Argument.FieldOverride.TargetMobUUID set from storage asset:context this.TargetMobUUID
    function api:object/summon

# リセット
    data remove storage asset:temp Check
    scoreboard players reset $1112.TargetMobUUID Temporary
