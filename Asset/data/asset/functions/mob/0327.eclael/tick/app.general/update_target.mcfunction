#> asset:mob/0327.eclael/tick/app.general/update_target
#
# 汎用処理 ターゲット更新
#
# @within asset:mob/0327.eclael/tick/**

#> Private
# @private
    #declare objective UserId

# ターゲットが近くにいるならスキップ
    execute if entity @p[tag=93.Temp.Target,distance=..80] run return 0

# ターゲット解放
    tag @a remove 93.Temp.Target

# 最も近くにいるプレイヤーをターゲットにする
# サバイバルの対象が居ない場合、しょうがないのでそれ以外を狙う
    tag @p[tag=!PlayerShouldInvulnerable,distance=..80] add 93.Temp.Target
    execute unless entity @p[tag=93.Temp.Target,distance=..80] run tag @p add 93.Temp.Target
    scoreboard players operation @s 93.TargetUserId = @p[tag=93.Temp.Target,distance=..80] UserId
