#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.1.damage_catch
#
# アニメーションのイベントハンドラ Kt大外刈り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Catch
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3
    data modify storage api: Argument set value {ID:67,Duration:40,Stack:20}
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
    # effect give @a[tag=9G.Temp.Target.Attack] slowness 2 20 true
    execute as @a[tag=9G.Temp.Target.Attack] at @s run tp @s @s

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 12
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
