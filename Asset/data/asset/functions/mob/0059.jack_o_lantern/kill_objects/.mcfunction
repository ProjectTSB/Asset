#> asset:mob/0059.jack_o_lantern/kill_objects/
#
#
#
# @within function
#   asset:mob/0059.jack_o_lantern/death/
#   asset:mob/0059.jack_o_lantern/remove/

# "確実に"偽物を消し去る
    execute as @e[type=zombie,scores={MobID=224},distance=..128] run function api:mob/remove

# カボチャが召喚するオブジェクトも抹消する
    kill @e[type=item_display,scores={ObjectID=2031..2036},distance=..128]
    kill @e[type=item_display,scores={ObjectID=2039},distance=..128]

# スポーンマーカーをkill
    kill @e[type=marker,tag=1N.SpawnMarker,distance=..128]
