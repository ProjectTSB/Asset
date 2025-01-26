#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/5.damage
#
# アニメーションのイベントハンドラ Hgかかと落とし ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.4] add 9F.Temp.Target.Attack
    execute positioned ^ ^ ^2.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.4] add 9F.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.7
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
    playsound ogg:entity.player.attack.knockback4 hostile @a ~ ~ ~ 2 0.8
    particle explosion ~ ~0.3 ~ 2 0 2 0 10
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8
    execute rotated ~ 90 positioned ~ ~0.1 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/6.2.particle_circle

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
