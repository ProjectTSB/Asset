#> asset:object/1082.soulfire_burst_bigshot/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1082/kill

#>ヒット検知
# @private
#declare tag Hit

# 演出
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.ender_dragon.flap neutral @a ~ ~ ~ 2 0.8
    particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 0 force @a[distance=..32]
    particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.2 50

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 400..600
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

# 直撃したやつと、着弾地点の位置の範囲内にタグを付与
    execute positioned ~-1 ~-1 ~-1 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] add Hit
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] add Hit

# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1082.soulfire_burst_bigshot/kill/modifier.m with storage asset:context this

# タグを与えた対象にダメージを与える
    execute as @e[type=#lib:living,tag=Hit,distance=..8] run function api:damage/

# リセット
    tag @e[type=#lib:living,tag=Hit,distance=..64] remove Hit
    function api:damage/reset

# 消失
    kill @s
