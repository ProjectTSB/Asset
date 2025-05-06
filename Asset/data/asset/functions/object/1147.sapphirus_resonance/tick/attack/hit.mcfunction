#> asset:object/1147.sapphirus_resonance/tick/attack/hit
# @within function asset:object/1147.sapphirus_resonance/tick/attack/recursive.m

# 演出
    particle firework ~ ~1.2 ~ 0 0 0 0.3 10
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    # data modify storage api: Argument.ElementType set value "None"
    execute as @a[tag=VV.Owner,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
