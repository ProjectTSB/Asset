#> asset:artifact/0316.rapids_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/316/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:block blue_ice ~ ~1 ~ 0.5 0.5 0.5 2 50
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1
    playsound minecraft:entity.player.swim player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1

# ダメージ
    # ダメージセット
        execute store result storage api: Argument.Damage float 1 run random value 12..27
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/

# リセット
    function api:damage/reset
