#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/5.2.damage_impact
#
# アニメーションのイベントハンドラ Kt真空斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^1.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 70f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# ダメージクールダウン設定
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players set @s 9G.DamageCooldown 5

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 5
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
