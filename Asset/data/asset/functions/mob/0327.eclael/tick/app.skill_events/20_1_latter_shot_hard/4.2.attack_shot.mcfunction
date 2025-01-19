#> asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.2.attack_shot
#
# アニメーションのイベントハンドラ 後半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/1.main

# TODO：演出を練る
# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 1.8
    particle flash ~ ~ ~ 0 0 0 0 1

# 角度変更
    execute facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 弾召喚
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-10 ~-2
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~20 ~
    data modify storage api: Argument.ID set value 2189
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon

# 角度もどす
    tp @s ~ ~ ~ ~ ~
