#> asset:artifact/1332.bebebeam/trigger/beam/
#
#
#
# @within function
#   asset:artifact/1332.bebebeam/trigger/3.main
#   asset:artifact/1332.bebebeam/trigger/loop/main

# 演出
    playsound tsb_sounds:blaster2 player @a ~ ~ ~ 0.3 1.5
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 0.7 1.5

# 発射数のデクリメント
    scoreboard players remove @s 110.Count 1

# 属性管理スコアの管理
# 0:火, 1:水, 2:雷
# インクリメントし、3以上なら0に戻す
    scoreboard players add @s 110.Element 1
    execute if score @s 110.Element matches 3.. run scoreboard players set @s 110.Element 0

# 再帰でヒット判定 兼 演出用に何ブロックまで視線が通っているかチェック
    scoreboard players set $110.Range Temporary 0
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1332.bebebeam/trigger/beam/recursive

# レーザー演出Object召喚
    function asset:artifact/1332.bebebeam/trigger/beam/summon_object

# リセット
    scoreboard players reset $110.Range
