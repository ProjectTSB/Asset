#> asset:mob/0078.messenger_of_thunder/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/78/remove

# super.remove
    function asset:mob/super.remove

# 召喚地点記録Markerを破壊
    kill @e[type=marker,tag=26.SpawnPoint]
