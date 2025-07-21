#> asset:artifact/1079.allochromatic/click/get_resonance_cooldown
#
# 共鳴攻撃のクールダウンを取得
#
# @within function asset:artifact/1079.allochromatic/click/3.main

# 数値を取得
    execute store result score $TZ.Temp1 Temporary run data get storage global Time
    execute store result score $TZ.Temp2 Temporary run scoreboard players get @s TZ.LatestResonanceAttack
    execute store result score $TZ.Temp3 Temporary run data get storage asset:temp TZ.Const.ResonanceAttack.Cooldown
# 経過時間を計算
    scoreboard players operation $TZ.Temp1 Temporary -= $TZ.Temp2 Temporary
    scoreboard players operation $TZ.Temp3 Temporary -= $TZ.Temp1 Temporary
    scoreboard players operation $TZ.Temp3 Temporary > $0 Const
# クールダウンを取得
    execute store result storage asset:temp TZ.Resonance.AttackCooldown int 1 run scoreboard players get $TZ.Temp3 Temporary
# リセット
    scoreboard players reset $TZ.Temp1 Temporary
    scoreboard players reset $TZ.Temp2 Temporary
    scoreboard players reset $TZ.Temp3 Temporary
