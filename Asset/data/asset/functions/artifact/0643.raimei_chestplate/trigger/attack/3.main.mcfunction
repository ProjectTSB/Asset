#> asset:artifact/0643.raimei_chestplate/trigger/attack/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0643.raimei_chestplate/trigger/attack/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    data modify storage asset:artifact Index set value 1
    function asset:artifact/common/use/chest

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.867 0.667 0.161 1 ~ ~1 ~ 0 1 0 0 100

# ダメージ設定
    # 与えるダメージ = 15
        data modify storage api: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
