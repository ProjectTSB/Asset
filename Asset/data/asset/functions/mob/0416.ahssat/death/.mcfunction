#> asset:mob/0416.ahssat/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/416/death

# Split を 1 以上持っていないなら打ち切り
    execute if data storage asset:context this{Split:0} run return fail

# Split を 1 減算して分裂
    # 召喚
        execute store result storage api: Argument.FieldOverride.Split int 0.9999999999 run data get storage asset:context this.Split
        data modify storage api: Argument.ID set value 416
        function api:mob/summon
    # 召喚
        execute store result storage api: Argument.FieldOverride.Split int 0.9999999999 run data get storage asset:context this.Split
        data modify storage api: Argument.ID set value 416
        function api:mob/summon
