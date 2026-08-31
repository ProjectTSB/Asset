#> asset:effect/0386.pk_insight/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0386.pk_insight/_/tick

#> Private
#@private
    #declare score_holder $Duration

# 残り時間が5tick以内なら耐性デバフを消して大幅上昇
    execute store result score $Duration Temporary run data get storage asset:context Duration
    execute if score $Duration Temporary matches 5 run function asset:effect/0386.pk_insight/tick/guard
