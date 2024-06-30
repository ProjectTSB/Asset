#> asset:artifact/1078.pigeon_blood/trigger/5.resonance_cooldown
#
#
#
# @within function asset:artifact/1078.pigeon_blood/trigger/3.main

#> Private
# @private
    #declare score_holder $TY.Cooldown

# 現在ゲーム時間を取得
    execute store result score $TY.Cooldown Temporary run time query gametime

# 差分を計算
    scoreboard players operation $TY.Cooldown Temporary -= @s TY.LatestResonanceTick

# 差が20以上なら共鳴攻撃が発動
    execute if score $TY.Cooldown Temporary matches 20.. run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/1.summon_entity

# 成功時にその時のtickを保存
    execute if score $TY.Cooldown Temporary matches 20.. store result score @s TY.LatestResonanceTick run time query gametime