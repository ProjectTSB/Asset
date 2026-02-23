#> asset:object/1027.rain_area/tick/damage_and_heal
#
# ダメージと回復の処理
#
# @within function asset:object/1027.rain_area/tick/

#> Private
# @private
    #declare tag Owner
    #declare tag 1027.TargetEntity
    #declare score_holder $UserID
    #declare score_holder $AttackWater

# 演出
    playsound entity.dolphin.swim neutral @a ~ ~ ~ 0.7 1.5 0
    playsound entity.dolphin.swim neutral @a ~ ~ ~ 0.7 1.8 0
    playsound ogg:ambient.underwater.additions.bubbles6 neutral @a ~ ~ ~ 0.5 1.5 0
    execute positioned ~ ~0.25 ~ run function asset:object/1027.rain_area/tick/vfx/2
    execute positioned ~ ~0.8 ~ run function asset:object/1027.rain_area/tick/vfx/2

# 使用者にTagを付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# ターゲットとなるEntityにTagを付与
    execute if score $Interval Temporary matches 0 positioned ~ ~ ~ run tag @e[type=#lib:living,tag=!Uninterferable,tag=!Object,distance=..7] add 1027.TargetEntity
    execute if score $Interval Temporary matches 0 positioned ~ ~3 ~ run tag @e[type=#lib:living,tag=!Uninterferable,tag=!Object,distance=..7] add 1027.TargetEntity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=1027.TargetEntity,tag=!Uninterferable,distance=..20] run function api:damage/
    function api:damage/reset

# 回復
    # 水攻撃補正をstorageに入れる (補正1.2の場合、0.2になるように計算)
        execute as @p[tag=Owner] run function api:modifier/attack/water/get
        execute store result score $AttackWater Temporary run data get storage api: Return.Attack.Water 100
        scoreboard players operation $AttackWater Temporary -= $100 Const
        execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $AttackWater Temporary

    # 体力回復量補正に水攻撃補正を掛ける
        data modify storage api: Argument.UUID set value [I;1,1,907,0]
        data modify storage api: Argument.Operation set value "multiply"
        execute as @p[tag=Owner] run function api:modifier/heal/add

    # 範囲内のプレイヤーを使用者の最大体力に比例して回復
    # 調整を容易にするために割合はフィールドから取得する
        execute as @p[tag=Owner] run function api:modifier/max_health/get
        execute store result storage api: Argument.Heal double 0.01 run function asset:object/1027.rain_area/tick/get_heal_per.m with storage asset:context this
        execute as @p[tag=Owner] run function api:heal/modifier
        execute as @a[tag=1027.TargetEntity,distance=..20] run function api:heal/
        function api:heal/reset

    # 体力回復補正から水攻撃補正分の補正を取り除く
        data modify storage api: Argument.UUID set value [I;1,1,907,0]
        execute as @p[tag=Owner] run function api:modifier/heal/remove

# リセット
    tag @e[type=#lib:living,tag=1027.TargetEntity,distance=..20] remove 1027.TargetEntity
    tag @p[tag=Owner] remove Owner
    scoreboard players reset $UserID Temporary
    scoreboard players reset $AttackWater Temporary
