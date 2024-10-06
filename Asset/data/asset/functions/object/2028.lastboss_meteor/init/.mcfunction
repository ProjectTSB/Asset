#> asset:object/2028.lastboss_meteor/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2028/init

#> SpreadLibとトゥルタリアの出現位置
# @private
#declare tag MeteorSpreadMarker
#declare tag RW.Marker.SpawnPoint

# 発射体のステータス
    data modify storage asset:context this set value {Speed:3,Range:128}

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["MeteorSpreadMarker"]}

# 拡散させる
    execute as @e[type=marker,tag=MeteorSpreadMarker,distance=..100,limit=1] run function asset:object/2028.lastboss_meteor/init/spread

# マーカーを地面に下ろす
    execute as @e[type=marker,tag=MeteorSpreadMarker,distance=..200,sort=nearest,limit=1] at @s run function asset:object/2028.lastboss_meteor/init/recursive_down

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=MeteorSpreadMarker,distance=..200,sort=nearest,limit=1]

# マーカーに対してパーティクル
    execute at @e[type=marker,tag=MeteorSpreadMarker,distance=..200,limit=1] positioned ~ ~0.5 ~ run particle explosion

# 拡散マーカーを消す
    kill @e[type=marker,tag=MeteorSpreadMarker,distance=..200]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]

# Super!
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
