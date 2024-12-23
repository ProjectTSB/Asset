#> asset:object/2008.disaster_divine/tick/ready
#
# ショット準備完了
#
# @within function asset:object/2008.disaster_divine/tick/

# タグ外し
    tag @s remove 2008.ShotReadyManual

# Tickリセット
    scoreboard players set @s General.Object.Tick 0

# タグ付け
    tag @s add 2008.ShotReady
