#> asset:object/1089.cosmo_beam/tick/shot
#
#
#
# @within function asset:object/1089.cosmo_beam/tick/

#> Private
# @private
    #declare score_holder $UserID
    #declare score_holder $Count
    #declare score_holder $Damage

# 演出
    execute positioned ~-8 ~-105 ~-8 run playsound minecraft:entity.generic.explode player @a[dx=15,dy=199,dz=15] ~ ~ ~ 1 2 1
    particle explosion ~ ~4 ~ 3 4 3 0 5
    particle flash ~ ~4 ~ 3 4 3 0 5
    particle wax_off ~ ~5 ~ 4 10 4 0 100

# 画面エフェクト
    execute positioned ~-8 ~-105 ~-8 as @a[dx=15,dy=199,dz=15] run title @s times 0 8 20
    execute positioned ~-8 ~-105 ~-8 as @a[dx=15,dy=199,dz=15] run title @s title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}

# ダメージ設定

# Owner取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# 数をカウントして、ダメージを割る
    execute store result score $Count Temporary positioned ~-8 ~-105 ~-8 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,scores={MobID=0..},dx=15,dy=199,dz=15]
    execute store result score $Damage Temporary run data get storage asset:context this.Damage
    scoreboard players operation $Damage Temporary /= $Count Temporary
    # debug tellraw @a {"score":{"name":"$Damage","objective":"Temporary"}}
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
# 属性とか
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Tunder"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier

# ダメージ
    execute positioned ~-8 ~-105 ~-8 as @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,dx=15,dy=199,dz=15] run function api:damage/
# リセット
    function api:damage/reset
    scoreboard players reset $Count
    scoreboard players reset $Damage

# もし天使がいるなら、天使には軽減したダメージを与える
    execute positioned ~-8 ~-105 ~-8 if entity @e[type=#lib:living,tag=Enemy.Boss,tag=!Uninterferable,dx=15,dy=199,dz=15] run function asset:object/1089.cosmo_beam/tick/angel_damage
