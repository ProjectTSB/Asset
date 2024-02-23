#> asset:mob/0339.twins_sapphiel/hurt/app/1.guard
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0339.twins_sapphiel/hurt/2.hurt

# 攻撃者を向く
    execute facing entity @a[tag=Attacker,limit=1] feet run tp @s ~ ~ ~ ~ 0

# アニメーション再生
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation
    tag @s add 9F.Skill.Hg.Guard

# カウンター増加
    scoreboard players add @s 9F.GuardCount 1

# カウンター一定以上の場合、強制反撃
    execute if score @s 9F.GuardCount matches 3.. run say 強制反撃

# 演出
    particle crit ^ ^1.2 ^1 0 0 0 0.5 10

# 終了
    tag @s remove 9F.State.IsGuard

say ガード