#> asset:artifact/0312.fire_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/312/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1.5

# ダメージ
    # ダメージセット
        execute store result storage api: Argument.Damage float 1 run random value 6..12
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
