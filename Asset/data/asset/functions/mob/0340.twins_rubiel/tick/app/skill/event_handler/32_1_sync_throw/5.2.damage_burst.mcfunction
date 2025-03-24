#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.2.damage_burst
#
# アニメーションのイベントハンドラ Syncぶん投げ 衝撃波ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# 演出兼ヒット判定
    execute positioned ^ ^2.5 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^5 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^1 ^ rotated ~ ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst
    execute positioned ^ ^1 ^ rotated ~120 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst
    execute positioned ^ ^1 ^ rotated ~240 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 55f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.5

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
