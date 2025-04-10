#> asset:object/2194.labyria_death/tick/kill
#
# キル処理
#
# @within function asset:object/2194.labyria_death/tick/

# AnimatedJavaモデルの削除
    function animated_java:labyria/remove/all
# Marker削除
    kill @s

# ボスドロ
# (本質的にはウサギの管理entityが行うべきだが、ユーザー的に違和感がないようにこっちで召喚する)
    data modify storage api: Argument.ID set value 1125
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
