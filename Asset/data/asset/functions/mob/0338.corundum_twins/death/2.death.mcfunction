#> asset:mob/0338.corundum_twins/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/1.trigger

# 独自処理に移譲
# 紐づけ対象の取得のため、実行主を変更する
    execute as @e[type=marker,tag=9E.Marker.SpawnPoint,sort=nearest,limit=1] at @s run function asset:mob/0338.corundum_twins/death/app/1.check

say root death