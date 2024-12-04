#> asset:artifact/0333.koukisin/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/333/attack_melee/


# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run particle minecraft:crit ~ ~1 ~ 0.2 0.8 0.2 0 80 normal @a[distance=..30]
    playsound minecraft:block.anvil.place player @a[distance=..10] ~ ~ ~ 0.8 2

# ダメージ
    # 与えるダメージ = 28
        data modify storage lib: Argument.Damage set value 28f
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value true
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset