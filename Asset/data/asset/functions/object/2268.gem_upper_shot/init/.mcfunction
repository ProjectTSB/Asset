#> asset:object/2268.gem_upper_shot/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2268/init

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 0.1 run random value 0..3600
    execute store result entity @s Rotation[1] float 0.1 run random value -900..-700

# 予兆・攻撃時間
    scoreboard players set @s 2268.AttackTime 60
    execute if data storage asset:context this.PredictionTime store result score @s 2268.PredictionTime run data get storage asset:context this.PredictionTime
    execute if data storage asset:context this.AttackTime store result score @s 2268.AttackTime run data get storage asset:context this.AttackTime
    execute unless data storage asset:context this.PredictionTime store result storage asset:context this.PredictionTime int 1 run scoreboard players set @s 2268.PredictionTime 60

# その他時間
    execute store result score @s 2268.VfxTime store result score @s 2268.KillTime run scoreboard players get @s 2268.AttackTime
    scoreboard players remove @s 2268.VfxTime 3
    scoreboard players add @s 2268.KillTime 1
