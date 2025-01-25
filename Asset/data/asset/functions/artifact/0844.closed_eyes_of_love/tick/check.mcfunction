#> asset:artifact/0844.closed_eyes_of_love/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/844/tick/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
#範囲内に敵がいるか確認
    execute anchored eyes positioned ^ ^ ^ positioned ~-1 ~0.5 ~-1 unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1,dy=1,dz=1] run tag @s remove CanUsed
