#> asset:object/2182.heiloang_thunderball/tick/get_player
#
# Objectのtick時の処理
#
# @within asset:object/2182.heiloang_thunderball/tick/

# 対象プレイヤーにタグを付与
    scoreboard players operation $TempUserID Temporary = @s 2182.PlayerId
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..80] if score @s UserID = $TempUserID Temporary run tag @s add 2182.TargetPlayer

# 対象が存在しない場合、再度プレイヤーを取得
    execute unless entity @a[tag=2182.TargetPlayer] run function asset:object/2182.heiloang_thunderball/tick/reset_player

# ロックオン線
    execute on passengers run function asset:object/2182.heiloang_thunderball/tick/prediction_line

# 攻撃予告
    execute if entity @s[scores={General.Object.Tick=115}] at @p[tag=2182.TargetPlayer] unless entity @e[type=item_display,tag=2180.Pillar,distance=..4] run function asset:object/2182.heiloang_thunderball/tick/prediction

# 終了
    scoreboard players reset $TempUserID Temporary
    tag @a[tag=2182.TargetPlayer] remove 2182.TargetPlayer
