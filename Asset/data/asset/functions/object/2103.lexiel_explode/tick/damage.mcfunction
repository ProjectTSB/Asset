#> asset:object/2103.lexiel_explode/tick/damage
#
#
#
# @within function asset:object/2103.lexiel_explode/tick/

# 演出
    particle explosion_emitter ~ ~ ~ 1 4 1 1 10
    particle flame ~ ~10 ~ 8 10 8 1 200
    particle lava ~ ~10 ~ 8 10 8 1 200
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
# リセット
    function api:damage/reset
    kill @s
