#> asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/hit
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/laser

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 0
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 20
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1.5

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset