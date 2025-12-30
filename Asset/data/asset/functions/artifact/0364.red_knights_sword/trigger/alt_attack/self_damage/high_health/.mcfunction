#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/high_health/
#
# 最大HPの40%分のダメージを受ける！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 必要な値を取得
    function api:modifier/max_health/get
    execute store result score $A4.MaxPer Temporary run data get storage api: Return.MaxHealth 0.4
    function api:data_get/health
    execute store result score $A4.Current Temporary run data get storage api: Health

# そもそも現在体力がストッパー以下ならここで終了
    execute if score $A4.Current Temporary <= $A4.Stopper Temporary run return run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/reset

# (現在体力 - 最大体力のN%)を算出
    scoreboard players operation $A4.Current Temporary -= $A4.MaxPer Temporary

# ダメージ初期値として最大体力のN%を入れておく
    scoreboard players operation $A4.Damage Temporary = $A4.MaxPer Temporary

# 計算結果がストッパー未満なら(現在体力 - ストッパー)ダメージにする
    execute if score $A4.Current Temporary <= $A4.Stopper Temporary run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/high_health/stopper_damage

# ダメージ
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $A4.Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# リセット
    function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/reset
