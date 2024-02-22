#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.1.damage_slash
#
# アニメーションのイベントハンドラ Kt真空斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[distance=..5] add 9G.Temp.Target.Attack
# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 62f
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

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[distance=..10] add 9G.Temp.Target.Attack.Sub
# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=9G.Temp.Target.Attack.Sub,tag=!9G.Temp.Target.Attack] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# かちあげ
    execute at @a[tag=9G.Temp.Target.Attack,distance=..3] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:0.5f,Duration:6,Age:4,effects:[{id:"levitation",amplifier:50b,duration:3,show_particles:0b}]}

# 演出
    playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.5
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    particle explosion ^ ^ ^ 3 0.1 3 0 20
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3
    execute positioned ^ ^1 ^ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.2.particle_circle

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
    tag @a[tag=9G.Temp.Target.Attack.Sub] remove 9G.Temp.Target.Attack.Sub
