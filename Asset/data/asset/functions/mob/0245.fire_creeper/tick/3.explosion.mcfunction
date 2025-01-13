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

# ダメージ
    data modify storage api: Argument.Damage set value 11f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 自殺
    function api:mob/remove
