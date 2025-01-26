#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/5.damage
#
# アニメーションのイベントハンドラ Hg回し蹴り ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2.8] add 9F.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 45f
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
    execute at @a[tag=9F.Temp.Target.Attack] positioned ~ ~1 ~ run particle explosion ~ ~ ~ 0.1 0.2 0.1 0 1
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
