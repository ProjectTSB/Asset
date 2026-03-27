#> asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/tick

# ダメージエリア
    function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/damage_area

# 見た目
    function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/recursive

# サウンド
    playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.5
