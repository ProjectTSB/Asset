#> asset:object/1088.aigis_vitae/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/1088/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行者取得
    execute as @a if score @s UserID = @e[type=marker,tag=this,distance=..0.01,limit=1] 38.OwnerID run tag @s add 38.Owner

# フェーズ処理
    execute if data storage asset:context this{Phase:1} run function asset:object/1088.aigis_vitae/tick/phase/1/
    execute if data storage asset:context this{Phase:2} run function asset:object/1088.aigis_vitae/tick/phase/2/
    execute if data storage asset:context this{Phase:3} run function asset:object/1088.aigis_vitae/tick/phase/3/

# リセット
    tag @a[tag=38.Owner] remove 38.Owner

# 削除処理
    execute if score @s General.Object.Tick matches 1000.. run function asset:object/1088.aigis_vitae/tick/kill
