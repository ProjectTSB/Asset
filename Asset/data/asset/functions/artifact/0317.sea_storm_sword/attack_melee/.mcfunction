#> asset:artifact/0317.sea_storm_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/317/attack_melee/

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function asset:artifact/0317.sea_storm_sword/attack_melee/vfx
    playsound item.trident.throw player @a ~ ~ ~ 0.8 0.7

# ダメージ
    # ダメージセット
        execute store result storage api: Argument.Damage float 1 run random value 45..85
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
