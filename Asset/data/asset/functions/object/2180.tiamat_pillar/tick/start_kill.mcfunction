#> asset:object/2180.tiamat_pillar/tick/start_kill
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/

# 消滅処理開始
    scoreboard players set @s General.Object.Tick 0
    tag @s add 2180.Pillar.Kill
