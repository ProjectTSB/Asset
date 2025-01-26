#> asset:artifact/0313.raging_fire_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/313/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.1 20
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.3

# ダメージ
    # ダメージセット
        execute store result storage api: Argument.Damage float 1 run random value 12..27
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/

# リセット
    function api:damage/reset
