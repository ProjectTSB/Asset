#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/7.start
#
# アニメーションのイベントハンドラ Kt居合斬りカウンター
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/1.main

# 攻撃者の位置を保持
    execute at @a[tag=Attacker] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:2,Tags:["Object","9G.Temp.Target.Aec.0"]}

# アニメーション再生
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    tag @s add 9G.Skill.Kt.Sheathe.Counter
