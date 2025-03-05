#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.1.damage_slash
#
# アニメーションのイベントハンドラ Kt真空斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..5] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 62f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[distance=..8.5] add 9G.Temp.Target.Attack.Sub

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack.Sub,tag=!9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

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

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 25
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
    tag @a[tag=9G.Temp.Target.Attack.Sub] remove 9G.Temp.Target.Attack.Sub
