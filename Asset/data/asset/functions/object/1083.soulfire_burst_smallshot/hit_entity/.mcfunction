#> asset:object/1083.soulfire_burst_smallshot/hit_entity/
#
# ダメージ判定だな、ここは
#
# @within function asset:object/alias/1083/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1083.soulfire_burst_smallshot/hit_entity/modifier.m with storage asset:context this

# 直撃したやつにダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run function api:damage/

# リセット
    function api:damage/reset

# super 呼び出し
    function asset:object/super.method
