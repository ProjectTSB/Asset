#> asset:mob/1020.throwing_sword/tick/damage_and_sound
#
# ダメージとサウンド
#
# @within function asset:mob/1020.throwing_sword/tick/2.tick

# サウンド処理
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.7 0.8
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 0.7 1

# ダメージ判定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # 対象
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
    # リセット
        function lib:damage/reset