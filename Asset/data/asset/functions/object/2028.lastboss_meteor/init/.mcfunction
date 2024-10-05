#> asset:object/2028.lastboss_meteor/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2028/init

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] at @e[type=marker,tag=RW.Marker.SpawnPoint,limit=1] run function lib:spread_entity/

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..200,limit=1]

# マーカーに対してパーティクル
#    execute at @e[type=marker,tag=SpreadMarker,distance=..200,limit=1] positioned ~ ~-0.1 ~ run function asset:mob/1011.meteor/summon/particle

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..200]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:4,Range:100,MovePerStep:0.5}

# Super!
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
