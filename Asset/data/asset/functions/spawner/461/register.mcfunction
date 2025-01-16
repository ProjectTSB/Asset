#> asset:spawner/461/register
#
# スポナーの定義データ
#
# @within function asset_manager:spawner/register/register.m


execute unless loaded 303 36 -72 run return 1

# ID (int)
    data modify storage asset:spawner ID set value 461
# Pos ([int] @ 3)
    data modify storage asset:spawner Pos set value [303, 36, -72]
# 体力 (int) このスポナーから召喚されたMobがN体殺されると破壊されるか
    data modify storage asset:spawner HP set value 4
# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value [53,47]
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 2
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 4
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 20
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 100
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 150
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 2
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 10