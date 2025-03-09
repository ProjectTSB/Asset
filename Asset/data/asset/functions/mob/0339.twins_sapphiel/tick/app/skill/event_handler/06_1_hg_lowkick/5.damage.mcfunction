#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/5.damage
#
# アニメーションのイベントハンドラ Hg回し蹴り ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.8] add 9F.Temp.Target.Attack
    execute as @a[tag=9F.Temp.Target.Attack] at @s if block ~ ~-1 ~ #lib:no_collision run tag @s remove 9F.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 10f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute at @a[tag=9F.Temp.Target.Attack] positioned ~ ~1 ~ run particle explosion ~ ~ ~ 0.1 0.2 0.1 0 1
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 転倒
    execute as @a[tag=9F.Temp.Target.Attack,sort=nearest,limit=1] positioned as @s align xyz positioned ~0.5 ~0.5 ~0.5 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/5.1.damage_down

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
