#> asset:mob/0338.corundum_twins/death/app/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/app/1.check

# 双子を消去
    function asset:mob/0338.corundum_twins/death/app/4.remove_twins

# 中心点削除
    kill @e[type=marker,tag=9E.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    kill @e[tag=9E.Object]

# TODO:死亡アニメーション再生用のモデルを召喚し、演出を開始する
