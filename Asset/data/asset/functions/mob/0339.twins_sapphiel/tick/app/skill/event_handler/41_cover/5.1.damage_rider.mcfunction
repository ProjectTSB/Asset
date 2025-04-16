#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.1.damage_rider
#
# アニメーションのイベントハンドラ 怯みかばい攻撃 ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main

# ヒット判定
    tag @a[distance=..2] add 9F.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.RiderKick
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 与ダメージクールダウン設定
    execute if entity @a[tag=9F.Temp.Target.Attack] run scoreboard players set @s 9F.DamageCooldown 5

# 演出
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
