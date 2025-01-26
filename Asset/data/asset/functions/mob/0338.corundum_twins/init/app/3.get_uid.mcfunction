#> asset:mob/0338.corundum_twins/init/app/3.get_uid
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within
#    function asset:mob/0338.corundum_twins/init/app/1.init
#    function asset:mob/0338.corundum_twins/init/app/3.get_uid

# uid決定
    execute store result score $Random Temporary run function lib:random/

# uid被りがいる場合、再度実行
    execute as @e[type=slime,tag=9E.Root,tag=9E.Init] if score @s 9E.Uid = $Random Temporary run function asset:mob/0338.corundum_twins/init/app/3.get_uid
