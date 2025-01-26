#> asset:mob/0378.red_knight_v3/tick/03.skill_iai/damage
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/03.skill_iai/main

# 自身の耐性を解除
    effect clear @s resistance

# 演出
    playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1


# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 第1属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第2属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
