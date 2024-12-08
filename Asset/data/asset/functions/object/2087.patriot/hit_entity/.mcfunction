#> asset:object/2087.patriot/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2087/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set value 700f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    #data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,distance=..5] run function api:damage/
    function api:damage/reset

# super呼び出し
    function asset:object/super.method
