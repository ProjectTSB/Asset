#> asset:object/2167.ahssat_bullet_core/tick/summon
#
# 弾丸召喚
#
# @within function asset:object/2167.ahssat_bullet_core/tick/spread

# 弾数のデクリメント
    execute store result storage asset:context this.Bullet int 0.999999999 run data get storage asset:context this.Bullet

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2166
    function api:object/summon
