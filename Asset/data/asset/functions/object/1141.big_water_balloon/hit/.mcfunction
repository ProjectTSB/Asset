#> asset:object/1141.big_water_balloon/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1141/hit

#> Private
# @private
    #declare tag Hit
    #declare score_holder $UserID

# サウンド
    playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.bubble_column.upwards_inside neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.bubble_column.whirlpool_inside neutral @a ~ ~ ~ 1 2
    playsound ogg:block.bubble_column.upwards_ambient1 neutral @a ~ ~ ~ 1.5 0.5
    playsound ogg:block.bubble_column.upwards_ambient1 neutral @a ~ ~ ~ 1.5 0.7

# パーティクル
    particle crit ~ ~ ~ 0 0 0 1 100
    particle minecraft:dust 0.525 0.843 1 1.5 ~ ~ ~ 0.5 0.5 0.5 0 25 force @a[distance=..32]
    particle minecraft:dust 0 0.667 1 2 ~ ~ ~ 1.5 1.5 1.5 0 100 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0.5 5
    #particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"

# 持ち主のIDを取得して、補正を乗せる
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier

# 直撃したやつと、着弾地点の位置の範囲内にタグを付与
    execute positioned ~-1 ~-1 ~-1 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] add Hit
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] add Hit

# タグを与えた対象にダメージを与える
    execute as @e[type=#lib:living,tag=Hit,distance=..16] run function api:damage/

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,tag=Hit,distance=..64] remove Hit
    function api:damage/reset

# super
    function asset:object/super.method
