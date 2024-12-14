#> asset:mob/0353.rubiel_knife/tick/app/2.damage
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0353.rubiel_knife/tick/app/1.move

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 35f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 終了
    tag @s add 9T.DamageGiven
