#> asset:mob/0410.heiloang/tick/event/terzetto_aligning/check_target
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning/

# ターゲットがいる場合、スキップ
    execute if entity @a[tag=BE.MainTarget,tag=!PlayerShouldInvulnerable,distance=..80] run return 0

# プレイヤーが2名以上ではない場合、スキップ
    execute store result score $TargetCount Temporary if entity @a[tag=!PlayerShouldInvulnerable,distance=..80]
    execute if score $TargetCount Temporary matches ..1 run return run scoreboard players reset $TargetCount Temporary

# ターゲット更新
    tag @a[tag=BE.MainTarget,tag=!PlayerShouldInvulnerable,limit=1] remove BE.MainTarget
    execute as @a[tag=!PlayerShouldInvulnerable,tag=!BF.MainTarget,distance=..80,sort=random,limit=1] run tag @s add BE.MainTarget

# 終了
    scoreboard players reset $TargetCount Temporary
