#> asset:artifact/0844.closed_eyes_of_love/trigger/3.1.damage
#
#
#
# @within function asset:artifact/0844.closed_eyes_of_love/trigger/3.main

# ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 450.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute anchored eyes positioned ^ ^ ^ positioned ~-1 ~0.5 ~-1 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] run function lib:damage/
# リセット
    function lib:damage/reset
