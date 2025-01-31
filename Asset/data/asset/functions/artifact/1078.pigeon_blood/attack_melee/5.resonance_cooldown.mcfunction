#> asset:artifact/1078.pigeon_blood/attack_melee/5.resonance_cooldown
#
#
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/

#> Private
# @private
    #declare score_holder $TY.Cooldown

# 現在ゲーム時間を取得
    execute store result score $TY.Cooldown Temporary run time query gametime

# 差分を計算
    scoreboard players operation $TY.Cooldown Temporary -= @s TY.LatestResonanceTick

# 差が35以上なら共鳴攻撃が発動
    execute if score $TY.Cooldown Temporary matches 35.. rotated ~ 0 run function asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/1.summon_entity

# 成功時にその時のtickを保存
    execute if score $TY.Cooldown Temporary matches 35.. store result score @s TY.LatestResonanceTick run time query gametime

# リセット
    scoreboard players reset $TY.Cooldown Temporary
