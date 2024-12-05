#> asset:artifact/0183.answer_to_the_ultimate_question_of_life_the_universe_and_everything/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/183/click/


# 演出
    particle portal ~ ~1.2 ~ 0 0 0 2 250 force @a
    particle reverse_portal ~ ~1.2 ~ 0 0 0 2 250 force @a
    playsound entity.elder_guardian.death player @s ~ ~ ~ 1 0 1
    tellraw @a ["* ",{"selector": "@s"},{"text": "は "},{"text": "\"750万年かけて計算された生命、宇宙、\nそして万物についての究極の疑問の答え\"","color": "light_purple"},{"text": "を知り、"},{"text": "MPが其の解となり続ける...！"}]

# Effectを付与
    data modify storage api: Argument.ID set value 217
    function api:entity/mob/effect/give
