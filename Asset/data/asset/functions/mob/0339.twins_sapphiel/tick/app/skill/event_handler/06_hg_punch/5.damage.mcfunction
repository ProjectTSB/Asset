#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/5.damage
#
# アニメーションのイベントハンドラ Hg正拳突き ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9F.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set value 55f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    playsound ogg:entity.player.attack.sweep2 hostile @a ~ ~ ~ 2 0.8
    playsound ogg:entity.player.attack.knockback3 hostile @a ~ ~ ~ 2 0.8
    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/6.2.particle_punch

# ヒット演出
    execute at @a[tag=9F.Temp.Target.Attack] positioned ~ ~1 ~ run particle explosion ~ ~ ~ 0.1 0.2 0.1 0 1
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 鈍足付与
    effect give @a[tag=9F.Temp.Target.Attack] slowness 5 3

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
