#> asset:mob/0323.mini_elder_guardian/tick/event/curse/
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/

# 付与条件を満たすプレイヤーがいるかチェック
    execute as @a[gamemode=!spectator,distance=..32] run function asset:mob/0323.mini_elder_guardian/tick/event/curse/check

# いれば付与
    execute if entity @p[tag=DebuffTarget,distance=..32] run function asset:mob/0323.mini_elder_guardian/tick/event/curse/give

# リセット
    tag @a[tag=DebuffTarget,distance=..32] remove DebuffTarget
