#> asset:artifact/0017.harmful_books/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0017.harmful_books/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~1 ~ run particle witch ^ ^ ^2.5 1.5 1 1.5 0 50 normal @a
    playsound minecraft:entity.witch.ambient player @a ~ ~ ~ 0.7 1.2

# ターゲットに毒を付与する
    data modify storage api: Argument.ID set value 328
    data modify storage api: Argument.FieldOverride.Damage set value 8
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ^ ^ ^2.5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..2.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
