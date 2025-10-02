#> asset:mob/0327.eclael/tick/app.general/update_target
#
# 汎用処理 ターゲット更新
#
# @within asset:mob/0327.eclael/tick/**

#> Private
# @private
    #declare objective UserId

# ターゲットが近くにいるならスキップ
    execute if entity @p[gamemode=!spectator,tag=93.Temp.Target,distance=..80] run return 0

# ターゲット解放
    tag @a[tag=93.Temp.Target] remove 93.Temp.Target

# 最も近くにいるプレイヤーをターゲットにする
# デバッグも想定してスペクテイター以外を対象に選ぶ
    tag @p[gamemode=!spectator,distance=..80] add 93.Temp.Target
    scoreboard players operation @s 93.TargetUserId = @p[tag=93.Temp.Target,distance=..80] UserId
