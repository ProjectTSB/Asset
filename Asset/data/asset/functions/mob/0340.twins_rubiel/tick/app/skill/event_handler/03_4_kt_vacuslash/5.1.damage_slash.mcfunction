#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/5.1.damage_slash
#
# アニメーションのイベントハンドラ Kt真空斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^4 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^6 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^8 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^10 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage api: Argument.Damage set value 55f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
# リセット
    function api:damage/reset

# 演出
    particle explosion ^ ^ ^ 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^2 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^4 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^6 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^8 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^10 0.3 0.1 0.3 0 1
    particle explosion ^ ^ ^12 0.3 0.1 0.3 0 1
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 10
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
