#> asset:mob/0338.corundum_twins/summon/app/1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0338.corundum_twins/summon/2.summon

# 初期化開始
    tag @s add 9E.Init

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 9E.Timer 0
    scoreboard players set @s 9E.ActionCount 0

# Uid設定
    function asset:mob/0338.corundum_twins/summon/app/3.get_uid
    scoreboard players operation @s 9E.Uid = $Random Temporary

# リセット
    scoreboard players reset $Random Temporary
