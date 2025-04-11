#> asset:mob/0412.tiamat/tick/event/attack/attack
#
# 通常攻撃
#
# @within asset:mob/0412.tiamat/tick/event/attack/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Attack
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 0.9
    playsound item.trident.return hostile @a ~ ~ ~ 2 1.4
    execute positioned ^ ^ ^-0.3 rotated ~ ~15 run function asset:mob/0412.tiamat/tick/event/attack/particle
    execute positioned ^ ^0.5 ^ rotated ~ ~15 run function asset:mob/0412.tiamat/tick/event/attack/particle
    execute positioned ^ ^1 ^-0.3 rotated ~ ~15 run function asset:mob/0412.tiamat/tick/event/attack/particle
