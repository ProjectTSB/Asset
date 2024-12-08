#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/hit
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 0
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 20
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1.5

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
# リセット
    function api:damage/reset
