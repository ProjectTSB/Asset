#> asset:mob/0264.dark_summoner/tick/teleport
#
# テレポートする
#
# @within function asset:mob/0264.dark_summoner/tick/casting

#> Private
# @private
    #declare tag SpreadMarker

# 自身にTagを付与
    tag @s add 7C.Teleported

# ワープ中はモデル外して透明化
    item replace entity @s armor.head with minecraft:stone{CustomModelData:20019}

# パーティクル
    function asset:mob/0264.dark_summoner/tick/vfx/teleport

# 実行座標を中心としてマーカーを拡散する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[7d,7d],[0.0d,0.0d],[7d,7d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,sort=nearest,limit=1] at @s run function lib:spread_entity/

# マーカーの位置が安全ならワープする
    execute at @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# マーカーをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]

# パーティクル
    execute at @s run function asset:mob/0264.dark_summoner/tick/vfx/teleport
