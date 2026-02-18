#> asset:mob/0340.twins_rubiel/hurt/app/4_sheathe_damage
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0340.twins_rubiel/hurt/

# 攻撃者を向く
    execute facing entity @a[tag=Attacker,tag=!PlayerShouldInvulnerable,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 2 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 2 0.6
    particle firework ^ ^1.2 ^ 0 0 0 0.6 10

# 状態リセット
    function asset:mob/0340.twins_rubiel/app/general/8.reset_state

# アニメーション再生
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    tag @s add 9G.Skill.Kt.Damage.Draw
