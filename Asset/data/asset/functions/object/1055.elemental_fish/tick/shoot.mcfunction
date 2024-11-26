#> asset:object/1055.elemental_fish/tick/shoot
#
# 魔法弾を発射する
#
# @within function asset:object/1055.elemental_fish/tick/

# 演出
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2

# 属性設定
    data modify storage api: Argument.FieldOverride.Element set from storage asset:context this.Element

# ダメージ量
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage

# UserID
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID

# 召喚
    data modify storage api: Argument.ID set value 1056
    function api:object/summon

# リセット
    scoreboard players reset @s 1055.Attack
