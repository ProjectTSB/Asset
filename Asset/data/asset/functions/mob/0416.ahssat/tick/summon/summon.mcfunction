#> asset:mob/0416.ahssat/tick/summon/summon
#
# 弾幕コア召喚
#
# @within function asset:mob/0416.ahssat/tick/summon/spread

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Bullet
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2167
    function api:object/summon
