#> asset:artifact/1209.sinful_scythe/trigger/damage
#
#
#
# @within function asset:artifact/1209.sinful_scythe/trigger/3.main

#> private
# @private
    #declare score_holder $Count

# 演出
    particle dust 1 1 1 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0 0 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50

    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 0

# ダメージを与える
    data modify storage api: Argument.Damage set value 200.0f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset


# 周囲にモブが殴った対象を除いて２体以上いる場合、エフェクトを撒く。そうでない場合、殴った対象にエフェクトを与える
    execute store result score $Count Temporary if entity @e[type=#lib:living,type=!player,tag=!Victim,tag=!Uninterferable,distance=..5]
    execute if score $Count Temporary matches 2.. run function asset:artifact/1209.sinful_scythe/trigger/effect
    execute unless score $Count Temporary matches 2.. run function asset:artifact/1209.sinful_scythe/trigger/effect2
    scoreboard players reset $Count Temporary
