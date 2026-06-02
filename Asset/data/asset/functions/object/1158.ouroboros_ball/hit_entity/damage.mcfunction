#> asset:object/1158.ouroboros_ball/hit_entity/damage
#
# damage処理
#
# @within function asset:object/1158.ouroboros_ball/hit_entity/

#> private
# @private
    #declare score_holder $OwnerID
    #declare score_holder $DamageHolder

# effectの情報を取得
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    data modify storage api: Argument.ID set value 361
    execute as @a if score @s UserID = $OwnerID Temporary run function api:entity/mob/effect/get/from_id
    execute store result score $DamageHolder Temporary run data get storage api: Return.Effect.Field.DamageHolder


# ダメージ計算
    # 今回追加するダメージの攻撃補正後のダメージを計算する。
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water" 
    execute as @a if score @s UserID = $OwnerID Temporary run function api:damage/modifier
    # 前に計算したダメージ量に保持している前のダメージ量を足して与えるダメージに入れる。
    execute store result score $Temporary Temporary run data get storage api: Argument.Damage
    execute as @a if score @s UserID = $OwnerID Temporary run scoreboard players operation $Temporary Temporary += $DamageHolder Temporary
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Temporary Temporary
    # 今回与えるダメージの八割を保持する。（最大2000）
    execute store result score $Temporary Temporary run data get storage api: Argument.Damage 80
    scoreboard players operation $Temporary Temporary /= $100 Const
    execute if score $Temporary Temporary matches 2000.. run scoreboard players set $Temporary Temporary 2000
    execute as @a if score @s UserID = $OwnerID Temporary store result score $DamageHolder Temporary run scoreboard players get $Temporary Temporary
    # 相手の耐性を考慮してダメージをあたえる。
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# effectの付与
    execute as @a if score @s UserID = $OwnerID Temporary run function asset:object/1158.ouroboros_ball/hit_entity/effect_add

# リセット
    scoreboard players reset $OwnerID Temporary
    scoreboard players reset $Temporary Temporary
    scoreboard players reset $DamageHolder Temporary
