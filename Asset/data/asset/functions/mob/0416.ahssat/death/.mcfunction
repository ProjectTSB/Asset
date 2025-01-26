#> asset:mob/0416.ahssat/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/416/death

# DeathCountを取り出す
    execute store result score $BK.Temp Temporary run data get storage asset:context this.DeathCount

# DeathCountが2以上なら打ち切り
    execute if score $BK.Temp Temporary matches 2.. run return run scoreboard players reset $BK.Temp Temporary

# DeathCountを+1
    scoreboard players add $BK.Temp Temporary 1

# DeathCountを引き継いで召喚させる
    execute store result storage api: Argument.FieldOverride.DeathCount int 1 run scoreboard players get $BK.Temp Temporary
# 召喚
    data modify storage api: Argument.ID set value 416
    function api:mob/summon

# DeathCountを引き継いで召喚させる
    execute store result storage api: Argument.FieldOverride.DeathCount int 1 run scoreboard players get $BK.Temp Temporary
# 召喚
    data modify storage api: Argument.ID set value 416
    function api:mob/summon

# リセット
    scoreboard players reset $BK.Temp Temporary
