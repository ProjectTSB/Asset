#> asset:object/2103.lexiel_exprode/tick/hard_damage
#
#
#
# @within function asset:object/2103.lexiel_exprode/tick/

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
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
    kill @s
