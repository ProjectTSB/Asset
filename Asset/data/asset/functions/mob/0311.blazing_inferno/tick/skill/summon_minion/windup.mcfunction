#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/windup
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/posing/play

# サウンド
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 0.8
