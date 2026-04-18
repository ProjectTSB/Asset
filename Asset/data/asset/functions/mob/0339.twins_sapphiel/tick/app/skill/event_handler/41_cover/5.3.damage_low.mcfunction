#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.3.damage_low
#
# アニメーションのイベントハンドラ 怯みかばい攻撃 ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main

# ヒット判定
    tag @a[distance=..2.8] add 9F.Temp.Target.Attack
    execute as @a[tag=9F.Temp.Target.Attack] at @s if block ~ ~-1 ~ #lib:no_collision/ run tag @s remove 9F.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.CoverLow
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute at @a[tag=9F.Temp.Target.Attack] positioned ~ ~1 ~ run particle explosion ~ ~ ~ 0.1 0.2 0.1 0 1
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
