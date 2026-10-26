#> asset:object/2074.water_magic/init/summon_circle
#
#
#
# @within function asset:object/2074.water_magic/init/

#> Private
# @private
    #declare score_holder $Calc

# 召喚
    data modify storage api: Argument.ID set value 2279
    data modify storage api: Argument.FieldOverride.Char set value "0"
    data modify storage api: Argument.FieldOverride.Color set value "#0569ff"
    data modify storage api: Argument.FieldOverride.AppearScale set value [2.75f,2.75f,0f]
    data modify storage api: Argument.FieldOverride.AppearDuration set value 27
    data modify storage api: Argument.FieldOverride.SpinDuration set value 15
    data modify storage api: Argument.FieldOverride.DisappearDuration set value 15
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

# Tick = 45 + 15 × ceil(AttackCount / 3)
# 要するにこの式だと綺麗に消える
# AttackCountが0になるタイミングで丁度消えるようにする
    execute store result score $Calc Temporary run data get storage asset:context this.AttackCount
    scoreboard players add $Calc Temporary 2
    scoreboard players operation $Calc Temporary /= $3 Const
    scoreboard players operation $Calc Temporary *= $15 Const
    scoreboard players add $Calc Temporary 45
    execute store result storage api: Argument.FieldOverride.Tick int 1 run scoreboard players get $Calc Temporary
    execute rotated ~ 90 run function api:object/summon

# リセット
    scoreboard players reset $Calc Temporary
