#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/hit
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10
    playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SuperLaserMain
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
