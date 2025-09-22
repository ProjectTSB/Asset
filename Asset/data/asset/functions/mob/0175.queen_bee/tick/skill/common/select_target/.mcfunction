#> asset:mob/0175.queen_bee/tick/skill/common/select_target/
#
# ターゲットを一人絞り込んでおく
#
# @within function asset:mob/0175.queen_bee/tick/skill/**

#> Private
# @private
    #declare score_holder $UserID

# フィールドからUserIDを代入
    execute store result score $UserID Temporary run data get storage asset:context this.TargetID

# TargetIDと同じプレイヤーにTagをつける
    execute as @a[gamemode=!spectator,distance=..30] if score @s UserID = $UserID Temporary run tag @s add 4V.Target

# 4V.Targetがいないなら、周囲にいるプレイヤーのIDを入れ、再度Tagをつけておく
    execute unless entity @p[tag=4V.Target] as @r[gamemode=!spectator,distance=..30] run function asset:mob/0175.queen_bee/tick/skill/common/select_target/when_no_target

# リセット
    scoreboard players reset $UserID Temporary
