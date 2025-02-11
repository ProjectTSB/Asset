#> asset:artifact/0103.necronomicon/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/103/click/

# 演出
    particle minecraft:dragon_breath ~ ~0.8 ~ 2 0.5 2 0.01 100
    particle minecraft:enchant ~ ~1 ~ 0.8 0.3 0.8 0.1 100
    playsound minecraft:entity.elder_guardian.death player @a ~ ~ ~ 1 2

# 盲目
    effect give @a[distance=..10] minecraft:blindness 3 1

# ダメージ
    # 与えるダメージ = 380
        data modify storage api: Argument.Damage set value 800f
    # 第一属性 (第二属性なし)
        data modify storage api: Argument.AttackType set value "Magic"
    # ダメージを与える
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
