#> asset:mob/0078.messenger_of_thunder/kill_objects
#
#
#
# @within function
#   asset:mob/0078.messenger_of_thunder/death/
#   asset:mob/0078.messenger_of_thunder/remove/

# 召喚地点記録Markerを破壊
    kill @e[type=marker,tag=26.SpawnPoint,distance=..100]

# 諸々のObjectを削除
    kill @e[type=marker,scores={ObjectID=2057..2060},distance=..50]
