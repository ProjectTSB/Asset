#> asset:object/1019.voltage_bullet/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1019/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle firework ~ ~ ~ 0 0 0 0.2 30 normal @a
    particle dust 5 20000000 3 1.5 ~ ~ ~ 0.5 0.5 0.5 0 60 normal @a
    playsound entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.3 2 0
    playsound entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.3 1.5 0
    playsound item.trident.return neutral @a ~ ~ ~ 0.5 2 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
