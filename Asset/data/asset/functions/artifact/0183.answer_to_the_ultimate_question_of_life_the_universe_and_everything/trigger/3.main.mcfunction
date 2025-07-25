#> asset:artifact/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle portal ~ ~1.2 ~ 0 0 0 2 250 force @a
    particle reverse_portal ~ ~1.2 ~ 0 0 0 2 250 force @a
    playsound entity.elder_guardian.death player @s ~ ~ ~ 1 0 1
    tellraw @s ["* ",{"selector": "@s"},{"text": "は "},{"text": "\"750万年かけて計算された生命、宇宙、\nそして万物についての究極の疑問の答え\"","color": "light_purple"},{"text": "を知り、不思議な力を得た…！"}]

# Effectを付与
    data modify storage api: Argument.ID set value 217
    data modify storage api: Argument.Stack set value 42
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
