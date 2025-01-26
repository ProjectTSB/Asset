#> asset:mob/0338.corundum_twins/remove/app/1.remove
#
# Mobのremove時の処理
#
# @within
#     function asset:mob/0338.corundum_twins/remove/
#     function asset:mob/0338.corundum_twins/app/call_from_twins/1.remove

# remove検知タグ付与
    tag @s add 9E.Remove

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 双子を消去
    function asset:mob/0338.corundum_twins/remove/app/2.remove_twins

# 中心点削除
    kill @e[type=marker,tag=9E.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=9E.Object]

# 本来必要ないが、念のため紐づけ解除
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target
