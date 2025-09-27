#> asset:object/2182.heiloang_thunderball/tick/reset_player
#
# Objectのtick時の処理
#
# @within
#    function asset:object/2182.heiloang_thunderball/tick/get_player

# 最も近くにいるプレイヤーを対象にする
    tag @p[tag=!PlayerShouldInvulnerable,distance=..80] add 2182.TargetPlayer
    scoreboard players operation @s 2182.PlayerId = @p[tag=!PlayerShouldInvulnerable] UserID
    scoreboard players operation $TempUserID Temporary = @s 2182.PlayerId
