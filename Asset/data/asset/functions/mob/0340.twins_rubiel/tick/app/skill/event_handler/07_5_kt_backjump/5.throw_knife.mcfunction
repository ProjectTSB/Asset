#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/5.throw_knife
#
# アニメーションのイベントハンドラ Ktナイフ投げ 攻撃
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/1.main

# 演出
    playsound entity.egg.throw hostile @a ~ ~ ~ 2 1.3
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
    particle electric_spark ~ ~ ~ 0 0 0 1 30

# ナイフ(353)召喚
    data modify storage api: Argument.ID set value 353
    execute rotated ~ ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 353
    execute rotated ~-18 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 353
    execute rotated ~18 ~ run function api:mob/summon
    # data modify storage api: Argument.ID set value 353
    # execute rotated ~-50 ~-5 run function api:mob/summon
    # data modify storage api: Argument.ID set value 353
    # execute rotated ~50 ~-5 run function api:mob/summon
