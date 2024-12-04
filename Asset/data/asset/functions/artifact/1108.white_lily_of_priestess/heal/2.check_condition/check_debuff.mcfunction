#> asset:artifact/1108.white_lily_of_priestess/heal/check/check_debuff
#
# デバフがあるかをチェックする
#
# @within function asset:artifact/1108.white_lily_of_priestess/heal/check

# デバフのサイズを取得
    function api:entity/mob/effect/get/size/bad

# デバフのサイズをスコアへ移動
    execute store result score @s Temporary run data get storage api: Return.EffectSize.Bad

# 合計デバフ数に加算する
    scoreboard players operation $DebuffTotal Temporary += @s Temporary
