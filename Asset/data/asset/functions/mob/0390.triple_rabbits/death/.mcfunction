#> asset:mob/0390.triple_rabbits/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/390/death

#> function
# @private
    #declare function animated_java:axia/remove/all
    #declare function animated_java:ecual/remove/all
    #declare function animated_java:labyria/remove/all

# モデル削除（削除されていないときのために）
    function animated_java:axia/remove/all
    function animated_java:ecual/remove/all
    function animated_java:labyria/remove/all

# ボスドロップ（暫定）
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4

# 継承元の処理
    function asset:mob/super.death
