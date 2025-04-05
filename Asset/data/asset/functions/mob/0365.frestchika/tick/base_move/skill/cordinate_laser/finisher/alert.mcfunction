#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/alert
#
# 警告。今までのよりデカい。
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2
# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 6209279
    data modify storage api: Argument.FieldOverride.Scale set value [8f,8f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon
