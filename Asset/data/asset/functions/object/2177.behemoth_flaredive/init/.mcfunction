#> asset:object/2177.behemoth_flaredive/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2177/init

# 演出用
    execute if data storage asset:context {this:{IsVfx:true}} run tag @s add 2177.IsVfx
    execute if entity @s[tag=2177.IsVfx] run return run scoreboard players set @s General.Object.Tick 35

# 時間設定
    execute if data storage asset:context {this:{IsSlow:true}} run tag @s add 2177.IsSlow

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    execute if entity @s[tag=!2177.IsSlow] run data modify storage api: Argument.FieldOverride.Tick set value 55
    execute if entity @s[tag=2177.IsSlow] run data modify storage api: Argument.FieldOverride.Tick set value 75
    execute positioned ~ ~0.3 ~ run function api:object/summon
