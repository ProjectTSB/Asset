#> asset:mob/0354.rubiel_scythe/tick/app/2.damage
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0354.rubiel_scythe/tick/app/1.move

# ジャンプ中は回避できる
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.8] at @s if block ~ ~-0.7 ~ #lib:no_collision run tag @s add 9U.Avoid

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 52f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!9U.Avoid,tag=!PlayerShouldInvulnerable,distance=..1.8] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 終了
    tag @a remove 9U.Avoid
    scoreboard players set @s 9U.DamageInterval 3
