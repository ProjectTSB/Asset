#> asset:object/1099.conviction_sword/tick/shot_summon
#
# 弾召喚の処理
#
# @within function asset:object/1099.conviction_sword/tick/kill

# 召喚のデータ設定
    data modify storage api: Argument.ID set value 1100
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shot
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID

# Ownerと真逆の方向を見て召喚
    execute facing entity @p[tag=Owner] eyes rotated ~ 0 run function api:object/summon
