#> asset:object/2182.heiloang_thunderball/tick/set_player
#
# Objectのtick時の処理
#
# @within
#    function asset:object/2182.heiloang_thunderball/tick/
#    function asset:object/2182.heiloang_thunderball/tick/get_player

# 最も近くにいるプレイヤーを対象にする
    scoreboard players operation @s 2182.PlayerId = @p[tag=!PlayerShouldInvulnerable] UserID

# ロックオン線召喚
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20494
    function api:object/summon
    ride @e[type=item_display,tag=2181.Line,tag=!2182.Append,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2182.Append

# 移動
    tp @s ~ ~50 ~
