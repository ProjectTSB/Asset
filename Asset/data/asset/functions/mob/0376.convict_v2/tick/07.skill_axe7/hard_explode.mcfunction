#> asset:mob/0376.convict_v2/tick/07.skill_axe7/hard_explode
#
#
#
# @within function asset:mob/0376.convict_v2/tick/07.skill_axe7/main_hard


# 演出
    particle explosion_emitter ~ ~ ~ 2 4 2 1 20
    particle flame ~ ~10 ~ 10 10 10 1 200
    particle lava ~ ~10 ~ 10 10 10 1 200
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 33.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
