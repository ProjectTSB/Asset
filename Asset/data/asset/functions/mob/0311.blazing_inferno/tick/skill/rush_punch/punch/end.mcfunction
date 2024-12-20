#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/end
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/

# ラッシュアニメを終了
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_punch_1_end/tween {duration:10,to_frame:0}

# 攻撃判定と演出を目の前に出す
    execute anchored eyes positioned ^ ^-1 ^3 rotated ~ 0 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/finish

# スコアを固定
    scoreboard players set @s General.Mob.Tick 40
