#> asset:mob/0059.jack_o_lantern/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/59/death

# スーパーメソッド呼び出し
    function asset:mob/super.death

# プレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p eyes

# 死亡演出用オブジェクトを召喚
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.ID set value 2037
    execute positioned ~ ~1.5 ~ run function api:object/summon

# 偽物を抹消する
    kill @e[type=husk,scores={MobID=224},distance=..50]

# カボチャが召喚するオブジェクトも抹消する
    kill @e[type=item_display,scores={ObjectID=2031..2036},distance=..50]

# TextDisplayをkill
    kill @e[type=text_display,tag=1N.TextDisplay]

# スポーンマーカーをkill
    kill @e[type=marker,tag=1N.SpawnMarker]

# ボスドロ
    data modify storage api: Argument.ID set value 950
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    
    data modify storage api: Argument.ID set value 1113
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
