#> asset:object/2043.lastboss_ice_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2043/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $ParticleInterval Temporary = @s General.Object.Tick
    scoreboard players operation $DamageInterval Temporary = @s General.Object.Tick

# メイン処理
    # 落下前
        execute if entity @s[tag=!2043.Landed] run function asset:object/2043.lastboss_ice_sword/tick/unlanded/
    # 着地後
        execute if entity @s[tag=2043.Landed] run function asset:object/2043.lastboss_ice_sword/tick/landing/

# 消滅処理
    kill @s[scores={General.Object.Tick=600..}]

# Super、ただし着地後は必要なくなるので実行しない
    execute if entity @s[tag=!2043.Landed] run function asset:object/super.tick
