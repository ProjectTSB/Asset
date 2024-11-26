#> asset:mob/0410.heiloang/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/410/remove

# 継承元の処理実行
    function asset:mob/super.remove

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# 中心点消去
    kill @e[type=marker,tag=BE.CenterPosition]

# Ajモデル消去
    function animated_java:heiloang_aj/remove/all

say remove
