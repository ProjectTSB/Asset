#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread
#
# テキトーな位置に降ってくる隕石
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/**

# メテオのタイプ指定
    data modify storage api: Argument.FieldOverride set value {Type:Spread}

# 共通処理実行
    function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon
