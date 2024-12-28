#> asset:mob/0410.heiloang/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/410/init

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 中心点設置
        summon marker ~ ~ ~ {Tags:["BE.CenterPosition"]}
        execute as @e[type=marker,tag=BE.CenterPosition] at @s run tp @s ~ ~ ~ 0 0
    # 移動
        execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0410.heiloang/init/animated_java
    # スコア初期化
        scoreboard players set @s BE.Phase 0
        scoreboard players set @s BE.ActCount 0
        scoreboard players set @s BE.Idle.Count 0
    # エンハンスドディザスターの順番決定
        execute store result score @s BE.Ehd.Fire run random value 1..3
        execute store result score @s BE.Ehd.Water run random value 1..2
        execute if score @s BE.Ehd.Water = @s BE.Ehd.Fire run scoreboard players add @s BE.Ehd.Water 1
        scoreboard players set @s BE.Ehd.Thunder 6
        scoreboard players operation @s BE.Ehd.Thunder -= @s BE.Ehd.Fire
        scoreboard players operation @s BE.Ehd.Thunder -= @s BE.Ehd.Water
    # 移動
        execute at @s run tp @s ^ ^ ^3 ~ 0
