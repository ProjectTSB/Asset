#> asset:object/2102.lexiel_tp/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2102/init

# 値を入れる
    data modify storage lib: Argument.Bounds set value [[8d,8d],[3d,3d],[8d,8d]]
# 拡散する
    function lib:spread_entity/

# 音
    execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# プレイヤー見る
    execute at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..100] feet
