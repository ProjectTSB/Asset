#> asset:mob/0189.water_mage/tick/summon/set_pos
#
# 実行位置が空中でもできる限り地面に寄せる
#
# @within function asset:mob/0189.water_mage/tick/summon/

# 最も近くのプレイヤーが接地しているなら、その場で召喚してreturn
# この関数を呼び出す際に(at @p)している可能性があるので、それ想定
    execute as @p[gamemode=!spectator,distance=..0.01] run function api:data_get/on_ground
    execute if entity @p[gamemode=!spectator,distance=..0.01] if data storage api: {OnGround:1b} run return run function asset:mob/0189.water_mage/tick/summon/summon

# 下がブロックでないなら可能な限り降りる
    # 無限再帰防止用storageを事前に設定
        data modify storage asset:temp RecursiveLimit set value 4
    # 再帰開始
        function asset:mob/0189.water_mage/tick/summon/align_to_ground
    # リセット
        data remove storage asset:temp RecursiveLimit
