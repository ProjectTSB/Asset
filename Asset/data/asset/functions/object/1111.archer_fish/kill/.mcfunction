#> asset:object/1111.archer_fish/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1111/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle fishing ^ ^-0.3 ^ 0.3 0.3 0.3 0 50 normal @a
    particle dust 0.365 0.733 1 1.4 ^ ^-0.3 ^ 0.3 0.3 0.3 0 10 normal @a
    playsound minecraft:entity.player.splash.high_speed neutral @a ~ ~ ~ 0.3 2

# ダメージ　
# サケクリティカルならダメージ2倍
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute if data storage asset:context this{SalmonCrit:true} store result storage api: Argument.Damage float 2 run data get storage api: Argument.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
