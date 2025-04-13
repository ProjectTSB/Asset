#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.2.damage_throw
#
# アニメーションのイベントハンドラ Kt大外刈り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8
    execute as @a[tag=9G.Temp.Target.Attack] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.3.damage_down

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
