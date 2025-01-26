#> asset:artifact/0907.rod_of_rain/trigger/rain_cloud/4.effect
#
# 雨のダメージ処理と回復処理
#
# @within function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/2.main

#> Private
# @private
    #declare score_holder $AttackWater

# 演出
    playsound entity.dolphin.swim player @a ~ ~ ~ 0.7 1.5 0
    playsound entity.dolphin.swim player @a ~ ~ ~ 0.7 1.8 0
    playsound ogg:ambient.underwater.additions.bubbles6 player @a ~ ~ ~ 0.5 1.5 0
    execute positioned ~ ~0.25 ~ run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/5.effect_vfx
    execute positioned ~ ~0.8 ~ run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/5.effect_vfx

# 自身を判別するTagを自身に付与
    tag @s add P8.This
    execute as @a if score @s UserID = @e[type=marker,tag=P8.This,limit=1] P8.UserID run tag @s add P8.Owner

# ダメージ
    data modify storage api: Argument.Damage set value 1200.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=P8.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=P8.TargetEntity,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# 回復
    # 水攻撃補正をstorageに入れる (補正1.2の場合、0.2になるように計算)
        execute as @p[tag=P8.Owner] run function api:modifier/attack/water/get
        execute store result score $AttackWater Temporary run data get storage api: Return.Attack.Water 100
        scoreboard players operation $AttackWater Temporary -= $100 Const
        execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $AttackWater Temporary

    # 体力回復量補正に水攻撃補正を掛ける
        data modify storage api: Argument.UUID set value [I;1,1,907,0]
        data modify storage api: Argument.Operation set value "multiply"
        execute as @p[tag=P8.Owner] run function api:modifier/heal/add

    # 範囲内のプレイヤーを使用者の最大体力の10%分回復
        execute as @p[tag=Object] run function api:modifier/max_health/get
        execute store result storage api: Argument.Heal float 0.1 run data get storage api: Return.MaxHealth
        execute as @p[tag=P8.Owner] run function api:heal/modifier
        execute as @a[tag=P8.TargetEntity,distance=..10] run function api:heal/
        function api:heal/reset

    # 体力回復補正から水攻撃補正を取り除く
        data modify storage api: Argument.UUID set value [I;1,1,907,0]
        execute as @p[tag=P8.Owner] run function api:modifier/heal/remove

# リセット
    tag @e[type=#lib:living,tag=P8.TargetEntity,distance=..10] remove P8.TargetEntity
    tag @s remove P8.This
    tag @p[tag=P8.Owner] remove P8.Owner
    scoreboard players reset $AttackWater Temporary
