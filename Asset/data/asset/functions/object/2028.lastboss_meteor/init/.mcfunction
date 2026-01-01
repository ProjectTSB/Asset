#> asset:object/2028.lastboss_meteor/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2028/init

#> SpreadLibとトゥルタリアの出現位置
# @private
    #declare tag MeteorSpreadMarker
    #declare tag RW.Marker.SpawnPoint

# 自分のエイムパターンで分岐する
    execute if data storage asset:context this{Type:Aim} run function asset:object/2028.lastboss_meteor/init/aiming_summon/
    execute if data storage asset:context this{Type:Spread} run function asset:object/2028.lastboss_meteor/init/spread_summon/

# Super!
    function asset:object/super.init

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]
