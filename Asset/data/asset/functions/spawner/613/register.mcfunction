#> asset:spawner/613/register
#
# スポナーの定義データ
#
# @within function asset_manager:spawner/register/register.m


execute unless loaded -232 205 641 run return 1

# ID (int)
    data modify storage asset:spawner ID set value 613
# Pos ([int] @ 3)
    data modify storage asset:spawner Pos set value [-232, 205, 641]
# 体力 (int) このスポナーから召喚されたMobがN体殺されると破壊されるか
    data modify storage asset:spawner HP set value 3
# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value [{Id:181,Weight:15},{Id:264,Weight:5}]
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 3
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 4
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 20
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 100
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 400
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 6
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 16