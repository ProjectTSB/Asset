#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.2.throw_knife
#
# アニメーションのイベントハンドラ Ktワープ連撃 攻撃
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main

# 演出
    playsound entity.egg.throw hostile @a ~ ~ ~ 2 1.3
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
    particle electric_spark ~ ~ ~ 0 0 0 1 30

# ナイフ召喚
    execute facing entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~3
    data modify storage api: Argument.ID set value 2197
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WarpKnife
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1.2 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~-18 ~
    data modify storage api: Argument.ID set value 2197
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WarpKnife
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1.2 ^1 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~36 ~
    data modify storage api: Argument.ID set value 2197
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.WarpKnife
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1.2 ^1 run function api:object/summon

# 終了
    tp @s ~ ~ ~ ~ ~
