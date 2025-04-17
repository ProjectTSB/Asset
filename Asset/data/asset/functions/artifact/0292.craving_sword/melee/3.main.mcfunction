#> asset:artifact/0292.craving_sword/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0292.craving_sword/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 0.9
    playsound entity.spider.step player @a ~ ~ ~ 0.6 0.9
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle dust 0.65 0.1 0.3 1 ~ ~1.2 ~ 0.5 0.5 0.5 0 40
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle block redstone_block ~ ~1.2 ~ 0.2 0.2 0.2 0 30

# MetaData設定
    data modify storage api: Argument.Metadata set value "84.CravingSword"

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 30..40
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
