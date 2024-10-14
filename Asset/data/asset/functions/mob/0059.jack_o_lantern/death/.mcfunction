#> asset:mob/0059.jack_o_lantern/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0059.jack_o_lantern/_/death

# プレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p eyes

# 死亡演出用オブジェクトを召喚
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.ID set value 2037
    execute positioned ~ ~1.5 ~ run function api:object/summon

# 偽物を抹消する
    kill @e[type=husk,scores={MobID=224},distance=..50]

# スポーンマーカーをkill
    kill @e[type=marker,tag=1N.SpawnMarker]
