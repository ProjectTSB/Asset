#> asset:artifact/0672.aurora_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0672.aurora_blade/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $RandomDamage
    #declare score_holder $CalcRandom
    #declare score_holder $MP
    #declare score_holder $MPMax
    #declare score_holder $MPPer

# 現在MPの100倍と最大MPを取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 100
    function api:mp/get_max
    execute store result score $MPMax Temporary run data get storage api: Return.MaxMP

# 現在のMP割合を算出
    execute store result score $MPPer Temporary run scoreboard players operation $MP Temporary /= $MPMax Temporary

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^1.2 ^0.6 rotated ~ ~-4 run function asset:artifact/0672.aurora_blade/trigger/4.sweeping_particle
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.4 1 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~300の追加ダメージ
            scoreboard players set $CalcRandom Temporary 301
            scoreboard players operation $RandomDamage Temporary %= $CalcRandom Temporary
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 150

# Argument.Damageに代入 $MPPer >= 70 なら1.5倍
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    execute if score $MPPer Temporary matches 70.. store result storage lib: Argument.Damage float 1.5 run scoreboard players get $RandomDamage Temporary

    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $CalcRandom Temporary
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $MP Temporary
    scoreboard players reset $MPMax Temporary
    scoreboard players reset $MPPer Temporary