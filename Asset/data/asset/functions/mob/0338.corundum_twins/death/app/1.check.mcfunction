#> asset:mob/0338.corundum_twins/death/app/1.check
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/2.death

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 判別用タグが付いていない場合、死亡処理実行
    execute unless entity @s[tag=9E.Remove] run function asset:mob/0338.corundum_twins/death/app/2.death

# 判別用タグが付いている場合、デスポーンとみなして双子の消去処理のみ実行
    execute if entity @s[tag=9E.Remove] run function asset:mob/0338.corundum_twins/death/app/3.remove

# 本来必要ないが、念のため紐づけ解除
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target

# 中心点(実行主)削除
    kill @s
