#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/5.damage
#
# アニメーションのイベントハンドラ Kt水平斬り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/1.main

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack
    execute positioned ^-2 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack
    execute positioned ^2 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9G.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage api: Argument.Damage set value 40f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function api:damage/
# リセット
    function api:damage/reset

# 演出
    execute at @a[tag=9G.Temp.Target.Attack] positioned ~ ~1 ~ run particle block red_wool ~ ~1 ~ 0.1 0.2 0.1 0 5
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 1.3

# ダメージクールダウン設定
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players set @s 9G.DamageCooldown 5

# 気分を上昇
    execute if entity @a[tag=9G.Temp.Target.Attack] run scoreboard players add @s 9G.MoodPoint 3
    function asset:mob/0340.twins_rubiel/app/general/9.change_mood

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
