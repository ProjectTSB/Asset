#> asset:object/2278.nectar_plant_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2278/tick

# Tick
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick

# 攻撃
    execute if data storage asset:context this{Tick:0} run function asset:object/2278.nectar_plant_attack/tick/attack
