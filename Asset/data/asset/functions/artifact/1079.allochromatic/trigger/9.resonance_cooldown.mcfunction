#> asset:artifact/1079.allochromatic/trigger/9.resonance_cooldown
#
# 共鳴攻撃のクールダウン設定
#
# @within function asset:artifact/1079.allochromatic/trigger/7.damage

#> Private
# @private
    #declare score_holder $TZ.Cooldown

# 現在ゲーム時間を取得
    execute store result score $TZ.Cooldown Temporary run time query gametime

# 差分を計算
    scoreboard players operation $TZ.Cooldown Temporary -= @s TZ.LatestResonanceTick

# 差が20以上なら共鳴攻撃が発動
    execute if score $TZ.Cooldown Temporary matches 20.. run function asset:artifact/1079.allochromatic/trigger/resonance_attack/1.summon_entity

# 成功時にその時のtickを保存
    execute if score $TZ.Cooldown Temporary matches 20.. store result score @s TZ.LatestResonanceTick run time query gametime

# リセット
    scoreboard players reset $TZ.Cooldown Temporary
