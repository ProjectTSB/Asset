#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/5.1.shot
#
# アニメーションのイベントハンドラ Lc射撃・射撃 ランチャー発射
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/1.main

# 演出
    playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.8
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1

# ミサイル(355)召喚
    # data modify storage api: Argument.ID set value 355
    # execute rotated ~ ~ run function api:mob/summon
    execute facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
    data modify storage api: Argument.ID set value 2199
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^1 ^1 run function api:object/summon

# 終了
    tp @s ~ ~ ~ ~ ~
