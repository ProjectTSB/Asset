#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/hit
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/laser/recursive

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10
    playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.RapidLaser
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
