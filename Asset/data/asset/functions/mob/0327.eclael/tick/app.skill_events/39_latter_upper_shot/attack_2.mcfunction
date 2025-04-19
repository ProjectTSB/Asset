#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/attack_2
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_hard

# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 2 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 2 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 2 1.8
    particle flash ~ ~ ~ 0 0 0 0 1 force

# 角度変更
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,distance=..80,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 弾召喚
    execute at @s run tp @s ~ ~ ~ ~10 ~
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ShotLatter
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-20 ~
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ShotLatter
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~40 ~
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ShotLatter
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-60 ~
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ShotLatter
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon

# 角度もどす
    tp @s ~ ~ ~ ~ ~
