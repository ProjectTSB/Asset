#> asset:mob/0391.axia_first/ai/projectile/slash_sonic/4.damage
#
# Playerが多重ヒットしない用の対策
#
# @within function asset:mob/0391.axia_first/ai/projectile/slash_sonic/2.tick

# ヒットタグを付与
    tag @s add AV.Temp.Target

# 自身のIDをストレージに入れる
    execute store result storage asset:temp AV.Temp int 1 run scoreboard players get @s UserID

# IDチェック
    function asset:mob/0391.axia_first/ai/projectile/slash_sonic/5.id_check.m with storage asset:temp AV

# ダメージ処理
    execute if entity @s[tag=AV.Temp.Target] run function lib:damage/

# ヒットタグ削除
    tag @s remove AV.Temp.Target

# リセット
    data remove storage asset:temp AV.Temp
