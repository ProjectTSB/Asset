#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/meteor/spread
#
# テキトーな位置に降ってくる隕石
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/pattern/**

# メテオのタイプ指定
    data modify storage api: Argument.FieldOverride set value {Type:Spread}

# 共通処理実行
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/meteor/summon
