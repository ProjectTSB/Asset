#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/meteor/aim
#
# 座標攻撃メテオ
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/pattern/**

# メテオのタイプ指定
    data modify storage api: Argument.FieldOverride set value {Type:Aim}

# 共通処理実行
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/meteor/summon
