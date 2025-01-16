#> asset:object/1082.soulfire_burst_bigshot/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1082/kill

#>ヒット検知
# @private
#declare tag Hit

# 演出
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.ender_dragon.flap neutral @a ~ ~ ~ 2 0.8
    particle minecraft:explosion ~ ~ ~ 1 1 1 1 5
    particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 10

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 400..600
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set value 12f
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# 直撃したやつと、そこからの範囲内にダメージ
    execute positioned ~-1 ~-1 ~-1 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] add Hit
    execute positioned ~-1 ~-1 ~-1 at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] add Hit

# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1082.soulfire_burst_bigshot/kill/modifier.m with storage asset:context this

# ダメージを与える
    execute as @e[type=#lib:living,tag=Hit,distance=..8] run function api:damage/

# リセット
    tag @a[tag=Hit,distance=..64] remove Hit
    function api:damage/reset

# 消失
    kill @s
