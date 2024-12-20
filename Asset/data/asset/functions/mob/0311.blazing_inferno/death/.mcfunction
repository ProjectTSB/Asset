#> asset:mob/0311.blazing_inferno/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/311/death

# サウンド
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.5

# 付近のしもべをキル
    kill @e[type=blaze,scores={MobID=313},distance=..64]

# 自分のマーカーを削除
    kill @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1]

# 残るタイプのオブジェクトを削除
    kill @e[type=marker,scores={ObjectID=2137}]

# モデルを削除
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2148
    function api:object/summon

# Super!
    function asset:mob/super.death
