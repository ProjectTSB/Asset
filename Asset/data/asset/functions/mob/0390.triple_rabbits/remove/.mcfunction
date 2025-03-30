#> asset:mob/0390.triple_rabbits/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/390/remove

#> function
# @private
    #declare function animated_java:axia/remove/all
    #declare function animated_java:ecual/remove/all
    #declare function animated_java:labyria/remove/all

# モデル削除（削除されていないときのために）
    function animated_java:axia/remove/all
    function animated_java:ecual/remove/all
    function animated_java:labyria/remove/all

# キルする
    scoreboard players operation $AU.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=wither_skeleton,tag=AU.Target,distance=..100] if score @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID run data modify entity @s DeathLootTable set value "empty"
    execute as @e[type=wither_skeleton,tag=AU.Target,distance=..100] if score @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID run function api:mob/kill

# リセット
    scoreboard players reset $AU.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.remove

datapack disable "file/AJ_Axia.zip"
datapack disable "file/AJ_Ecual.zip"
datapack disable "file/AJ_Labyria.zip"
