#> asset:object/2149.haruclaire_icebullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2149/init

# 超アイスバレットの欠片かどうか
    execute if data storage asset:context this.IsPiece run tag @s add 2149.IsPiece

# スピード関連の設定
    data modify storage asset:context this.Range set value 40
    execute unless entity @s[tag=2149.IsPiece] run data modify storage asset:context this.MovePerStep set value 1
    execute if entity @s[tag=2149.IsPiece] store result storage asset:context this.MovePerStep float 0.07 run random value 5..10
    # run data modify storage asset:context this.MovePerStep set value 0.6

# Tick初期値
    execute store result score @s General.Object.Tick run random value -5..0
    execute if entity @s[tag=2149.IsPiece] run scoreboard players set @s General.Object.Tick 20

# 角度初期化
    execute if entity @s[tag=2149.IsPiece] store result entity @s Rotation[1] float 1 run random value -45..-20

# 継承
    function asset:object/super.init

# 演出
    particle flash ~ ~ ~ 0 0 0 0 1
