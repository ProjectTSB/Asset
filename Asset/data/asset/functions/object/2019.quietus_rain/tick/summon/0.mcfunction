#> asset:object/2019.quietus_rain/tick/summon/0
#
# 召喚処理
#
# @within function
#   asset:object/2019.quietus_rain/tick/summon/1
#   asset:object/2019.quietus_rain/tick/summon/2
#   asset:object/2019.quietus_rain/tick/summon/3

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2017
    function api:object/summon
    tag @e[tag=2017.WaterMagic,distance=..0.001,limit=1] add 2019.Rain
