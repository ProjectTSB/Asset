#> asset:effect/0210.fading_speed/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0210.fading_speed/_/end

# 効果時間終了時、デバフを付与
    #data modify storage api: Argument.ID set value 211
    #function api:entity/mob/effect/give

# 補正を削除する
    function asset:effect/0210.fading_speed/modifier/remove
