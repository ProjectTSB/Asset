#> asset:artifact/0534.all_night_helmet/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/534/attack_melee/

# 演出
    playsound minecraft:entity.drowned.death_water player @a ~ ~ ~ 1 0.8
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.03 30

# ダメージ設定
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# 引数の設定
    # 回復する量 = 2
        data modify storage lib: Argument.Heal set value 2f
# 補正function
    function lib:heal/modifier
# 自分を対象に
    function lib:heal/
# リセット
    function lib:heal/reset
