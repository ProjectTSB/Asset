#> asset:artifact/1078.pigeon_blood/attack_melee/get_resonance_cooldown
#
# 共鳴攻撃のクールダウンを取得
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/3.main

# 数値を取得
    execute store result score $TY.Temp1 Temporary run data get storage global Time
    execute store result score $TY.Temp2 Temporary run scoreboard players get @s TY.LatestResonanceAttack
    execute store result score $TY.Temp3 Temporary run data get storage asset:temp TY.Const.ResonanceAttack.Cooldown
# 経過時間を計算
    scoreboard players operation $TY.Temp1 Temporary -= $TY.Temp2 Temporary
    scoreboard players operation $TY.Temp3 Temporary -= $TY.Temp1 Temporary
    scoreboard players operation $TY.Temp3 Temporary > $0 Const
# クールダウンを取得
    execute store result storage asset:temp TY.Resonance.AttackCooldown int 1 run scoreboard players get $TY.Temp3 Temporary
# リセット
    scoreboard players reset $TY.Temp1 Temporary
    scoreboard players reset $TY.Temp2 Temporary
    scoreboard players reset $TY.Temp3 Temporary
