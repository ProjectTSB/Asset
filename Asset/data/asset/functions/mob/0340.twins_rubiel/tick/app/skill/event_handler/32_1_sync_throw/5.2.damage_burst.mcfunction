#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.2.damage_burst
#
# アニメーションのイベントハンドラ Syncぶん投げ 衝撃波ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# 演出兼ヒット判定
    execute positioned ^ ^2.5 ^ run tag @a[distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^5 ^ run tag @a[distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^1 ^ rotated ~ ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst
    execute positioned ^ ^1 ^ rotated ~120 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst
    execute positioned ^ ^1 ^ rotated ~240 ~ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 55f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.5

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
