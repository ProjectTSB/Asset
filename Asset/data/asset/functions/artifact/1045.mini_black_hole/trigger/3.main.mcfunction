#> asset:artifact/1045.mini_black_hole/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1045.mini_black_hole/trigger/2.check_condition

#> Val
# @private
    #declare score_holder $T1.OwnerId

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 発動時の音
    playsound block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1.0 2 0.0
    playsound entity.wither.hurt player @a[distance=..16] ~ ~ ~ 0.5 1.5

# 演出
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1045.mini_black_hole/trigger/vfx

# Object召喚
    data modify storage api: Argument.ID set value 1042
    data modify storage api: Argument.FieldOverride.Damage set value 180
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^0.5 run function api:object/summon
