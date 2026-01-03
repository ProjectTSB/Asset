#> asset:object/1011.456_dice/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1011/tick

# 回転
    tp @s[scores={General.Object.Tick=..19}] ~ ~ ~ ~10 ~
    tp @s[scores={General.Object.Tick=20..}] ~ ~ ~ ~30 ~

# 数tick後
    execute if score @s General.Object.Tick matches 1 run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:17,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s General.Object.Tick matches 1 run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:18,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s General.Object.Tick matches 1 run summon area_effect_cloud ~ ~-0.2 ~ {CustomNameVisible:1b,Duration:19,CustomName:'{"text":" Alea jacta est! ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if score @s General.Object.Tick matches 20 run function asset:object/1011.456_dice/tick/start
    execute if score @s General.Object.Tick matches 28 run playsound minecraft:block.note_block.xylophone neutral @a ~ ~ ~ 1.5 1.7
    execute if score @s General.Object.Tick matches 30 run function asset:object/1011.456_dice/tick/beam/

# ドラムロール
    execute if score @s General.Object.Tick matches ..19 run function asset:object/1011.456_dice/tick/drum_roll

# パーティクル
    particle minecraft:electric_spark ^ ^ ^1 0 0 0 0 1 force
    particle minecraft:electric_spark ^ ^ ^-1 0 0 0 0 1 force

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# 一定以上になるたびに戻す
    execute if score @s General.Object.Tick matches 31.. if data storage asset:context this{Num:4} run scoreboard players set @s General.Object.Tick 25
    execute if score @s General.Object.Tick matches 31.. if data storage asset:context this{Num:5} run scoreboard players set @s General.Object.Tick 26
    execute if score @s General.Object.Tick matches 31.. if data storage asset:context this{Num:6} run scoreboard players set @s General.Object.Tick 27

# 残り攻撃回数が0になれば消滅
    execute if data storage asset:context this{AttackCount:0} run function asset:object/1011.456_dice/tick/kill
