#> asset:mob/0340.twins_rubiel/hurt/app/3.sheathe_counter
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0340.twins_rubiel/hurt/

# 攻撃者を向く
    execute facing entity @a[tag=Attacker,tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute at @a[tag=Attacker,tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:5,Tags:["Object","9G.Temp.Target.Aec.0"]}

# アニメーション再生
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    tag @s add 9G.Skill.Kt.Sheathe.Counter
