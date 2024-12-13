#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
#
# テキトーな位置に降ってくる隕石
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/**

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# メテオのタイプ指定
    data modify storage api: Argument.FieldOverride set value {Type:Spread}

# マーカーに対して拡散処理を実行
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
