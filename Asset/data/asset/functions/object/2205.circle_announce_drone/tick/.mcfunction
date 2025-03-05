#> asset:object/2205.circle_announce_drone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2205/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 召喚後2秒経過後にチェック開始、ドローンが周囲にいなければ消滅
        #execute if score @s General.Object.Tick matches 40.. unless entity @e[scores={MobID=214},distance=..64] run say test
    execute if score @s General.Object.Tick matches 40.. unless entity @e[scores={MobID=214},distance=..64] run kill @s
