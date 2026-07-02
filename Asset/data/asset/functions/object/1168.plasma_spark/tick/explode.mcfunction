#> asset:object/1168.plasma_spark/tick/explore
#
# 攻撃処理
#
# @within function asset:object/1168.plasma_spark/tick/**

#> Private
# @private
    #declare score_holder $UserID

# 攻撃判定
    data modify storage api: Argument.Damage set value 30.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set value 10f
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function api:damage/
    function api:damage/reset

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0 1
    playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 2

# リセット
    scoreboard players reset $UserID

# 消す
    kill @s
