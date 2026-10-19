#> asset:artifact/1390.red_refraction_prism/trigger/2.check_condition/if
#
# バニラ攻撃・継続ダメージ・火属性以外の攻撃か判定する
#
# @output result 成立なら1、不成立なら0
# @within function asset:artifact/1390.red_refraction_prism/trigger/2.check_condition

    execute if data storage asset:context Attack{IsDoT:false,IsVanilla:false} unless data storage asset:context Attack{ElementType:"Fire"} run return 1
    return 0
