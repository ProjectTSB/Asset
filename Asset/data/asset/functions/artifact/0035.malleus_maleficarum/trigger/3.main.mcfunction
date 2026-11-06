#> asset:artifact/0035.malleus_maleficarum/trigger/3.main
#
# 神器のメイン処理部
# @within function asset:artifact/0035.malleus_maleficarum/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.6

# 弾を召喚
    data modify storage api: Argument.ID set value 1002
    data modify storage api: Argument.FieldOverride.Tick set value 60
    data modify storage api: Argument.FieldOverride.Motion set value 0.8
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon
