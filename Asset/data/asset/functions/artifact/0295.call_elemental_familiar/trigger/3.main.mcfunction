#> asset:artifact/0295.call_elemental_familiar/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 精霊を3体召喚する
    execute rotated ~ 0 positioned ^2 ^ ^ run function asset:artifact/0295.call_elemental_familiar/trigger/summon_fairy
    execute rotated ~ 0 positioned ^ ^ ^-2 run function asset:artifact/0295.call_elemental_familiar/trigger/summon_fairy
    execute rotated ~ 0 positioned ^-2 ^ ^ run function asset:artifact/0295.call_elemental_familiar/trigger/summon_fairy

# 音とパーティクル　neutralになってるのは妖精側の音だから
    playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 2 2
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 2
