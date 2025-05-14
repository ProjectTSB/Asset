#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/select
#
# 雷槍の帯電方式を選択
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/

# スコア初期化
    scoreboard players set $AX.Temp Temporary 0

# 乱数で決める
    execute store result score $AX.Temp Temporary run random value 0..5

# ノーマルの場合
    execute if predicate api:global_vars/difficulty/max/normal if score $AX.Temp Temporary matches 0..2 run scoreboard players set @s AX.ThunderSpear 10
    execute if predicate api:global_vars/difficulty/max/normal if score $AX.Temp Temporary matches 3..5 run scoreboard players set @s AX.ThunderSpear 20
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $AX.Temp Temporary matches 0..1 run scoreboard players set @s AX.ThunderSpear 30
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $AX.Temp Temporary matches 2..3 run scoreboard players set @s AX.ThunderSpear 40
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $AX.Temp Temporary matches 4..5 run scoreboard players set @s AX.ThunderSpear 50

# スコアリセット
    scoreboard players reset $AX.Temp Temporary
