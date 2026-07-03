#> asset:object/1068.icicle/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1068/hit_entity

#> private
# @private
    #declare score_holder $UserID
    #declare tag 1068.Hit

# 対象にタグを付ける
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add 1068.Hit
# 鈍足付与
    effect give @e[type=#lib:living,tag=1068.Hit,distance=..10] slowness 10 2
# ダメージ与える
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute if entity @e[type=#lib:living,tag=1068.Hit,tag=ExtendedCollision,distance=..10] store result storage api: Argument.Damage double 0.009 run data get storage asset:context this.Damage 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=1068.Hit,distance=..10] run function api:damage/
    function api:damage/reset
# リセット
    tag @e[type=#lib:living,tag=1068.Hit,distance=..10] remove 1068.Hit

# super 呼び出し
    function asset:object/super.method
