#> asset:mob/0410.heiloang/tick/event/plamet/attack_plamet
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# ダメージ
    data modify storage api: Argument.Damage set value 5
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    function api:damage/reset

# 演出
    particle explosion ~ ~ ~ 3 0.5 3 0 30
    playsound entity.wither.break_block hostile @a ~ ~ ~ 3 0.7
