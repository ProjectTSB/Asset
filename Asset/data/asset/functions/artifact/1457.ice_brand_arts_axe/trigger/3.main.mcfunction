#> asset:artifact/1457.ice_brand_arts_axe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1457.ice_brand_arts_axe/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $UseTime
    #declare score_holder $NowTime
    #declare score_holder $value
    #declare score_holder $MaxDamageBaf
    #declare score_holder $BaseDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 攻撃時演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run particle block ice ~ ~ ~ 1 1 1 0 100
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run playsound block.glass.break player @a ~ ~ ~ 1.2 0.7
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.4 0.7

# 威力計算
    # 基礎ダメージ決定
        scoreboard players set $BaseDamage Temporary 500
    # ダメージ増加量決定
        scoreboard players set $MaxDamageBaf Temporary 1500
    # 諸々準備
        scoreboard players set $value Temporary 600
        data modify storage api: Argument.ID set value 365
        function api:entity/mob/effect/get/from_id
    # 使用時間取る
        execute store result score $UseTime Temporary run data get storage api: Return.Effect.Field.Time
    # 現在時間取る
        execute store result score $NowTime Temporary run data get storage global Time
    # 引き算して
        scoreboard players operation $NowTime Temporary -= $UseTime Temporary
        scoreboard players operation $value Temporary -= $NowTime Temporary
        execute if score $value Temporary matches ..-1 run scoreboard players set $value Temporary 0
    # 威力決定
        scoreboard players operation $MaxDamageBaf Temporary *= $value Temporary
        scoreboard players operation $MaxDamageBaf Temporary /= $600 Const
        scoreboard players operation $BaseDamage Temporary += $MaxDamageBaf Temporary

# 引数を set(ダメージ)
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $BaseDamage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
# スコアリセット
    scoreboard players reset $NowTime Temporary
    scoreboard players reset $UseTime Temporary
    scoreboard players reset $value Temporary
    scoreboard players reset $MaxDamageBaf Temporary
    scoreboard players reset $BaseDamage Temporary
