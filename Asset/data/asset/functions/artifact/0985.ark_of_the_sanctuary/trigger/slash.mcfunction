#> asset:artifact/0985.ark_of_the_sanctuary/trigger/slash
#
#
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/**

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 250.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4] positioned ^ ^ ^3 run function api:damage/
# リセット
    function api:damage/reset
