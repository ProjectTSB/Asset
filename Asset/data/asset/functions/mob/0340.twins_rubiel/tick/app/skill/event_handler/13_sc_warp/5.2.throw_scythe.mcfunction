#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/5.2.throw_scythe
#
# アニメーションのイベントハンドラ Scワープ連撃 鎌投げ
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/13_sc_warp/1.main

# 演出
    playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 2 1.1
    playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 2 1.4
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.8
    particle electric_spark ~ ~ ~ 0 0 0 1 30

# 鎌召喚
    # data modify storage api: Argument.ID set value 354
    # execute rotated ~ ~ run function api:mob/summon
    execute facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
    data modify storage api: Argument.ID set value 2198
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.SyncScThrow
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon

# 終了
    tp @s ~ ~ ~ ~ ~
