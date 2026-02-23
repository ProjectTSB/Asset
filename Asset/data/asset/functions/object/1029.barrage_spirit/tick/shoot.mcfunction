#> asset:object/1029.barrage_spirit/tick/shoot
#
# ショット発射！
#
# @within asset:object/1029.barrage_spirit/tick/

#> private
# @private
    #declare tag SpreadMarker

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 15
    data modify storage lib: Argument.Spread set value 3
    execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 弾を召喚する
    data modify storage api: Argument.ID set value 1030
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..20,sort=nearest,limit=1] feet rotated ~ ~5 run function api:object/summon

# カウントを増やす
    scoreboard players add @s 1029.ShotCount 1

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# リセット
    scoreboard players reset @s 1029.ActionTime
    kill @e[type=marker,tag=SpreadMarker,distance=..20]
