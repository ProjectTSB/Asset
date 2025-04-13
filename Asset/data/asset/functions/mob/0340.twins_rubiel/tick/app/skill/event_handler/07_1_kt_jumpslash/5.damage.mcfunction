#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/5.damage
#
# アニメーションのイベントハンドラ Kt飛び込み斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.JumpSlash
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 演出
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# ダメージクールダウン設定
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players set @s 9G.DamageCooldown 5

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 5
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
