#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.2.damage_spin
#
# アニメーションのイベントハンドラ 怯みかばい攻撃 ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main

# ヒット判定
    tag @a[distance=..2.8] add 9F.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage api: Argument.Damage set value 45f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
# リセット
    function api:damage/reset

# 演出
    execute at @a[tag=9F.Temp.Target.Attack] positioned ~ ~1 ~ run particle explosion ~ ~ ~ 0.1 0.2 0.1 0 1
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
