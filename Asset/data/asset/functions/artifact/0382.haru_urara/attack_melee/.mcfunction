#> asset:artifact/0382.haru_urara/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/382/attack_melee/


# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle dust 0.965 0.745 0.973 1 ~ ~0.3 ~ 0.4 8 0.4 0 400 force @a[distance=..30]
    playsound minecraft:entity.ender_dragon.flap player @a[distance=..15] ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ = 42
        data modify storage lib: Argument.Damage set value 42f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value false
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# 吹っ飛び効果
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run effect give @s minecraft:levitation 1 30 true