#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/5.damage
#
# アニメーションのイベントハンドラ Sync交差攻撃・斬り上げ ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^1.6 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SyncUpper
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 1 1.1
    playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 1 1.4
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1.2
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# かちあげ
    execute at @a[tag=9G.Temp.Target.Attack] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:0.5f,Duration:6,Age:4,effects:[{id:"levitation",amplifier:30b,duration:5,show_particles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:60,show_particles:0b}]}

# Rootにヒット通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @a[tag=9G.Temp.Target.Attack,sort=random,limit=1] run function asset:mob/0338.corundum_twins/app/call_from_twins/skill/01_crossfire/1.rubiel_hit
    scoreboard players reset $Uid Temporary

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 10
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
