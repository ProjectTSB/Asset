#> asset:object/2182.heiloang_thunderball/tick/set_player
#
# Objectのtick時の処理
#
# @within
#    function asset:object/2182.heiloang_thunderball/tick/
#    function asset:object/2182.heiloang_thunderball/tick/get_player

# 最も近くにいるプレイヤーを対象にする
    tag @p[tag=!PlayerShouldInvulnerable,distance=..80] add 2182.TargetPlayer
    scoreboard players operation @s 2182.PlayerId = @p[tag=!PlayerShouldInvulnerable] UserID

# ロックオン線召喚
    data modify storage api: Argument.ID set value 2181
    data modify storage api: Argument.FieldOverride.OverrideCmd set value 20494
    function api:object/summon
    ride @e[type=item_display,tag=2181.Line,tag=!2182.Append,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2182.Append

# 移動
    execute rotated as @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^30 ^40

# 魔法陣召喚
    execute at @s facing entity @p[tag=2182.TargetPlayer] feet run tp @s ~ ~ ~ ~ ~
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 120
    execute at @s run function api:object/summon

# 終了
    tag @a[tag=2182.TargetPlayer] remove 2182.TargetPlayer
