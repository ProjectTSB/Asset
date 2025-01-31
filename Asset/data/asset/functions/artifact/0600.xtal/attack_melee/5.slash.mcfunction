#> asset:artifact/0600.xtal/attack_melee/5.slash
#
#
#
# @within function asset:artifact/0600.xtal/attack_melee/4.wait_time

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# ほしい範囲に剰余算
    execute store result score $Random Temporary run function lib:random/
# 疑似乱数取得
    scoreboard players operation $Random Temporary %= $3 Const
# パーティクル
    execute if score $Random Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/attack_melee/particle/particle_1
    execute if score $Random Temporary matches 1 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/attack_melee/particle/particle_2
    execute if score $Random Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/attack_melee/particle/particle_3
# リセット
    scoreboard players reset $Random Temporary

# ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 150.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute positioned ^ ^ ^3 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
# スコアもリセットする
    scoreboard players reset @s GO.Time
