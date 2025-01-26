#> asset:object/2202.circle_announce_follow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2202/tick

#> prv
# @private
    #declare score_holder $2202.PlayerID

# 対象プレイヤーの場所へTP
    function asset:object/2202.circle_announce_follow/tick/move.m with storage asset:context this
        #tellraw @p [{"score":{"objective":"Temporary","name":"$2202.PlayerID"}},{"text":" "},{"score":{"objective":"UserID","name":"@p"}}]


# 継承
    execute at @s run function asset:object/super.tick
