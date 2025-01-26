#> asset:mob/0338.corundum_twins/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/338/death

function asset:mob/super.death

# 独自処理に移譲
# 紐づけ対象の取得のため、実行主を変更する
    execute as @e[type=marker,tag=9E.Marker.SpawnPoint,sort=nearest,limit=1] at @s run function asset:mob/0338.corundum_twins/death/app/1.check
