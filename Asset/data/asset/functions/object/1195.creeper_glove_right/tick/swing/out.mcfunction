#> asset:object/1195.creeper_glove_right/tick/swing/out
#
# 円弧を進み、到達したかブロックに埋まったら爆発する
#
# @within function asset:object/1195.creeper_glove_right/tick/main

#> Private
# @private
    #declare score_holder $Step
    #declare score_holder $Duration
    #declare score_holder $Explode

# 進行度を1つ進める
    execute store result score $Step Temporary run data get storage asset:context this.Step
    scoreboard players add $Step Temporary 1
    execute store result storage asset:context this.Step int 1 run scoreboard players get $Step Temporary

# 進行度の割合 (×1000) を求める SwingDurationが0以下でも1tickとして扱う
    execute store result score $Duration Temporary run data get storage asset:context this.SwingDuration
    scoreboard players operation $Duration Temporary > $1 Const
    scoreboard players operation $Step Temporary < $Duration Temporary
    scoreboard players operation $1195.ArcT Temporary = $Step Temporary
    scoreboard players operation $1195.ArcT Temporary *= $1000 Const
    scoreboard players operation $1195.ArcT Temporary /= $Duration Temporary

# 円弧の位置へ動く
    function asset:object/1195.creeper_glove_right/tick/arc/

# 移動後に埋まっていなければ、埋まり判定を有効にする
    execute at @s if block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context this.IgnoreBury set value false

# 到達したか、埋まったか、敵に当たったら爆発する
    scoreboard players set $Explode Temporary 0
    execute if score $Step Temporary >= $Duration Temporary run scoreboard players set $Explode Temporary 1
    execute at @s unless block ~ ~ ~ #lib:no_collision/ if data storage asset:context this{IgnoreBury:false} run scoreboard players set $Explode Temporary 1
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,dx=0] run scoreboard players set $Explode Temporary 1
    execute if score $Explode Temporary matches 1 store result storage asset:context this.ExplodeProgress int 1 run scoreboard players get $1195.ArcT Temporary
    execute if score $Explode Temporary matches 1 at @s run function asset:object/1195.creeper_glove_right/tick/explode/

# リセット
    scoreboard players reset $Step Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $Explode Temporary
