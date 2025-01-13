#> asset:mob/0245.fire_creeper/tick/3.explosion
#
#
#
# @within function asset:mob/0245.fire_creeper/tick/

# 火を撒く(サバイバルのみで発動。アドベンチャーで出さないこと前提)
    execute if predicate api:area/is_breakable run function asset:mob/0245.fire_creeper/tick/4.fire_summon

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 1 2
    playsound entity.generic.explode hostile @a ~ ~ ~

# 属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 11f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # プレイヤー対象に
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function lib:damage/
    # リセット
        function lib:damage/reset

# 自殺
    function api:mob/remove
