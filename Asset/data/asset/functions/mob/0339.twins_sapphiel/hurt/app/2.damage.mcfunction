#> asset:mob/0339.twins_sapphiel/hurt/app/2.damage
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0339.twins_sapphiel/hurt/

# 攻撃者を向く
    execute facing entity @a[tag=Attacker,tag=!PlayerShouldInvulnerable,limit=1] feet run tp @s ~ ~ ~ ~ 0

# アニメーション再生
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation
    tag @s add 9F.Skill.Damage.Start

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 2 0.5
    playsound entity.item.break hostile @a ~ ~ ~ 2 0.6
    particle firework ^ ^1.2 ^ 0 0 0 0.6 10

# 状態リセット
    tag @s remove 9F.State.Weapon.Hg
    tag @s remove 9F.State.Weapon.Sg
    function asset:mob/0339.twins_sapphiel/app/general/7.reset_state

# 終了
    tag @s remove 9F.State.IsDamage
