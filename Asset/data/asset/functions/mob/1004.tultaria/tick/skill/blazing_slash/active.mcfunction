#> asset:mob/1004.tultaria/tick/skill/blazing_slash/active
#
# 剣を振り、でっか～い斬撃を発生させる
#
# @within function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick

## 斬撃
#    execute if entity @s[y_rotation=-22.5..22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-90F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=67.5..114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[0F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=115..157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[45F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=157.5..-157.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[90F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=-157.5..-114.9] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[135F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=-115..-67.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[180F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}
#    execute if entity @s[y_rotation=-67.5..-22.4] rotated ~ 0 anchored eyes run summon armor_stand ^ ^-1.8 ^ {Rotation:[-135F,0F],Tags:["RW.SlashSweep","RW.FireSweep","RW.SlashInit"],NoGravity:1b,Invisible:1b,Pose:{RightArm:[0.1f,180.0f,0.1f]},DisabledSlots:4144959}

# エフェクト
    execute anchored eyes rotated ~ ~10 positioned ^ ^-0.5 ^1 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/particle

# Init
    execute rotated ~ 0 anchored eyes positioned ^ ^-1.8 ^ as @e[type=armor_stand,tag=RW.SlashInit,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/common/slash_entity/init

# スケジュール開始
    schedule function asset:mob/1004.tultaria/tick/skill/common/slash_entity/tick 1t replace

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1.5 2

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute if entity @p[distance=..6] positioned ^ ^ ^100 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function lib:damage/
# リセット
    function lib:damage/reset