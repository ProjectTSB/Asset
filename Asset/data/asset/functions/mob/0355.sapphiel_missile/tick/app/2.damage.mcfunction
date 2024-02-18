#> asset:mob/0355.sapphiel_missile/tick/app/2.damage
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0355.sapphiel_missile/tick/2.tick

# TODO:ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 60f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.7
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    particle campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 50
    particle lava ~ ~ ~ 1 1 1 0 10

# 終了
    kill @s
