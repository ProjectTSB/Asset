#> asset:artifact/0317.sea_storm_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0317.sea_storm_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function asset:artifact/0317.sea_storm_sword/trigger/vfx
    playsound item.trident.throw player @a ~ ~ ~ 0.8 0.7

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~40の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $41 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 45
    #ダメージセット
        execute store result storage api: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $RandomDamage Temporary
    scoreboard players reset $Rotate Temporary
