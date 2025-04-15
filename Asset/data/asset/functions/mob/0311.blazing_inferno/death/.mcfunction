#> asset:mob/0311.blazing_inferno/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/311/death

# サウンド
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 2 0.7

# 付近のしもべをキル
    execute as @e[type=blaze,scores={MobID=313},distance=..64] run function api:mob/kill

# 自分のマーカーを削除
    kill @e[type=marker,tag=8N.Marker,distance=..256,sort=nearest,limit=1]

# 残るタイプのオブジェクトを削除
    kill @e[type=marker,scores={ObjectID=2137},distance=..256]

# モデルを削除
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2148
    execute facing entity @p[distance=..64] eyes run function api:object/summon

# Super!
    function asset:mob/super.death
