#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/
#
# ミニオン召喚&方向転換
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# すでにいる雑魚は退散
    execute if score @s General.Mob.Tick matches 0 as @e[type=blaze,scores={MobID=313},distance=..64] at @s run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/banish_minion

# 構える
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/windup

# 召喚して回転の向きを変更
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/active

# ポーズ戻す
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:10, to_frame:0}

# この技が終わると同時にスキルのリストを復元
    execute if score @s General.Mob.Tick matches 70 run data modify storage asset:context this.Skill.List set value [0,1,2,3,4]

# リセット
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
