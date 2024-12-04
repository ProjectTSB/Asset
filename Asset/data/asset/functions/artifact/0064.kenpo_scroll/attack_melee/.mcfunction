#> asset:artifact/0064.kenpo_scroll/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/64/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 1 50 force @a[distance=..10]
    playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 2

# 10の軽減貫通ダメージを与える
    # 与えるダメージ = 28
        data modify storage lib: Argument.Damage set value 28f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 防御無視
        data modify storage lib: Argument.FixedDamage set value true
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージを与える
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
    # リセット
        function lib:damage/reset
