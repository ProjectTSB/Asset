#> asset:object/2165.haruclaire_ice_spinner/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2165/init

# 角度変更
    tp @s ~ ~ ~ ~90 ~

# 外周
    execute if data storage asset:context this{IsLong:true} run tag @s add 2165.IsLong
