#> asset:mob/0338.corundum_twins/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/338/remove

datapack disable "file/AJ_Rubiel.zip"
datapack disable "file/AJ_Supphiel.zip"

function asset:mob/super.remove

# 独自remove処理に移譲
    function asset:mob/0338.corundum_twins/remove/app/1.remove
