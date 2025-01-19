#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.2.damage_throw
#
# アニメーションのイベントハンドラ Kt大外刈り ダメージ判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] add 9G.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=9G.Temp.Target.Attack] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    execute if entity @a[tag=9G.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8
    execute as @a[tag=9G.Temp.Target.Attack] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/5.3.damage_down

# 終了
    tag @a[tag=9G.Temp.Target.Attack] remove 9G.Temp.Target.Attack
