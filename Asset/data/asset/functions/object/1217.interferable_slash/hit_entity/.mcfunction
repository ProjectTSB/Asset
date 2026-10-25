#> asset:object/1217.interferable_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1217/hit_entity

# 強化中の処理
    execute if entity @s[tag=1217.Reinforced] run function asset:object/1217.interferable_slash/hit_entity/reinforced.m with storage asset:context this

# ダメージ処理
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# kill
    function asset:object/call.m {method:kill}
