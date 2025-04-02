#> asset:object/1102.turret/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1102/tick

#> tag
# @private
    #declare tag 1102.Target
    #declare tag 1102.Even
    #declare score_holder $1102.ShotCount

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 奇数偶数チェック
    execute store result score $1102.ShotCount Temporary run scoreboard players get @s 1102.Shot
    scoreboard players operation $1102.ShotCount Temporary %= $2 Const
    execute if score $1102.ShotCount Temporary matches 0 run tag @s add 1102.Even
    scoreboard players reset $1102.ShotCount

# 敵がいたらそっち向く
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10] positioned ~-5 ~ ~-5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,dx=9,dy=0,dz=9] run tag @s add 1102.Target
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10] facing entity @e[type=#lib:living,tag=Enemy,tag=1102.Target,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 4tickおきに実行
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if entity @e[type=#lib:living,tag=Enemy,tag=1102.Target,distance=..10] if score $Interval Temporary matches 0 if entity @s[tag=1102.Even] positioned ~ ~0.3 ~ positioned ^-0.4 ^ ^ run function asset:object/1102.turret/tick/shot/shot
    execute if entity @e[type=#lib:living,tag=Enemy,tag=1102.Target,distance=..10] if score $Interval Temporary matches 0 unless entity @s[tag=1102.Even] positioned ~ ~0.3 ~ positioned ^0.4 ^ ^ run function asset:object/1102.turret/tick/shot/shot
# リセット
    scoreboard players reset $Interval
    tag @s remove 1102.Even
# ターゲットのタグを消す
    tag @e[type=#lib:living,tag=Enemy,tag=1102.Target,tag=!Uninterferable,distance=..40] remove 1102.Target
# 消滅処理
    kill @s[scores={General.Object.Tick=120..}]
