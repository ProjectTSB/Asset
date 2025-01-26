#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/5.damage
#
# アニメーションのイベントハンドラ Hgライダーキック ダメージ判定
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# ヒット判定
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 9F.Temp.Target.Attack

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 42f
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

# 与ダメージクールダウン設定
    execute if entity @a[tag=9F.Temp.Target.Attack] run scoreboard players set @s 9F.DamageCooldown 5

# 演出
    execute if entity @a[tag=9F.Temp.Target.Attack] run playsound ogg:entity.player.attack.knockback2 hostile @a ~ ~ ~ 2 0.8

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
