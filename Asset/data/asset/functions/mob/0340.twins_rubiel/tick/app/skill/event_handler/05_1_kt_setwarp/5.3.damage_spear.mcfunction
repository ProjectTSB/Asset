#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.3.damage_spear
#
# アニメーションのイベントハンドラ Ktワープ連撃 ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 9G.Temp.Target.Attack
    execute positioned ^ ^ ^1.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 9G.Temp.Target.Attack
    execute as @a[tag=9G.Temp.Target.Attack] at @s if block ~ ~-0.7 ~ #lib:no_collision/ run tag @s add 9G.Temp.Target.JumpAvoid
    tag @a[tag=9G.Temp.Target.JumpAvoid] remove 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.WarpSpear
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    playsound ogg:item.trident.throw1 hostile @a ~ ~ ~ 1 1.1
    playsound ogg:item.trident.throw2 hostile @a ~ ~ ~ 1 1.4
    playsound item.trident.hit_ground hostile @a ~ ~ ~ 1 1.1
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# ジャンプで回避したプレイヤーを追跡
    execute if entity @a[tag=9G.Temp.Target.JumpAvoid] run schedule function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.1.schedule_movetospear 1t replace

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 5
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
