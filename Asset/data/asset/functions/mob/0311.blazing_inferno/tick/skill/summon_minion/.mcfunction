#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/
#
# ミニオン召喚&方向転換
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# すでにいる雑魚は退散、ただしノーマルモード以下に限る
    execute unless predicate api:global_vars/difficulty/min/hard if score @s General.Mob.Tick matches 0 as @e[type=blaze,scores={MobID=313},distance=..30] run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/banish_minion

# 構える
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/windup

# 召喚と爆発
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/active

# ポーズ戻す
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:10, to_frame:0}

# リセット
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
