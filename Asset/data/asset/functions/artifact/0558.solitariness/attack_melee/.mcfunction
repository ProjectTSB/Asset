#> asset:artifact/0558.solitariness/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/558/attack_melee/

# 演出
    execute at @e[type=#lib:living,tag=Victim] run particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0 50 force @a
# 効果
    # ノックバック
        data modify storage lib: Argument.VectorMagnitude set value 1
        execute as @e[type=#lib:living,tag=Victim] at @s facing entity @a[tag=this] feet rotated ~180 -15 run function lib:motion/
        data remove storage lib: Argument
    # Damage
        data modify storage api: Argument set value {Damage:60,AttackType:Physical,ElementType:None}
        function api:damage/modifier
        execute as @e[type=#lib:living,tag=Victim] run function api:damage/

# リセット
    function api:damage/reset
