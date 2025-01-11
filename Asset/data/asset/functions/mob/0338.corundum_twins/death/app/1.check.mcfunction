#> asset:mob/0338.corundum_twins/death/app/1.check
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 死亡処理実行
    function asset:mob/0338.corundum_twins/death/app/2.death

# 本来必要ないが、念のため紐づけ解除
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target

# 中心点(実行主)削除
    kill @s
