#> asset:mob/0410.heiloang/tick/event/plamet/attack_dive
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# ヒット判定
    data modify storage lib: args.dx set value 6
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 7.5
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    execute if score @s BE.Charge.Count matches ..0 run data modify storage api: Argument.Damage set from storage asset:context this.Damage.TDive0
    execute if score @s BE.Charge.Count matches 1 run data modify storage api: Argument.Damage set from storage asset:context this.Damage.TDive1
    execute if score @s BE.Charge.Count matches 2.. run data modify storage api: Argument.Damage set from storage asset:context this.Damage.TDive2
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ
