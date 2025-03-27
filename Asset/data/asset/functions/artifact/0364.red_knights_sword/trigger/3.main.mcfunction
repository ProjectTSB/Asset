#> asset:artifact/0364.red_knights_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0364.red_knights_sword/trigger/2.check_condition

# 先にLatestUseTickを取っておく
    execute store result score $A4.LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick

# 使用時に前回の使用時のTickとの差が開いていた場合、コンボカウントをリセットする
    execute unless score @s A4.Combo matches -2147483648..2147483647 run scoreboard players set @s A4.Combo 0
    execute store result score $A4.Temp Temporary run time query gametime
    scoreboard players operation $A4.Temp Temporary -= $A4.LatestUseTick Temporary
    execute unless score $A4.Temp Temporary matches ..30 run scoreboard players set @s A4.Combo 0

# コンボフィニッシュを出したあとは、前回の使用時とのTickの差が13Tick以上でないと使用処理がキャンセルされる
    execute if score @s A4.Combo matches 3.. unless score $A4.Temp Temporary matches 13.. run scoreboard players reset $A4.Temp Temporary
    execute if score @s A4.Combo matches 3.. unless score $A4.Temp Temporary matches 13.. run return fail
    execute if score @s A4.Combo matches 3.. if score $A4.Temp Temporary matches 13.. run scoreboard players reset @s A4.Combo

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto
# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 365
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id
    execute unless data storage asset:context Items.mainhand.id run tellraw @s {"text":"赤い騎士の剣は血を欲している","color":"dark_red","bold":true}

# コンボカウント加算
    scoreboard players add @s A4.Combo 1

# 攻撃
    execute if score @s A4.Combo matches 1 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/combo/slash1
    execute if score @s A4.Combo matches 2 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/combo/slash2
    execute if score @s A4.Combo matches 3 anchored eyes run function asset:artifact/0364.red_knights_sword/trigger/combo/slash3

# リセット
    scoreboard players reset $A4.Temp Temporary
# 乱数取得
    execute store result score $Random Temporary run random value 0..2
# メッセージ出力
    execute if score $Random Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_1
    execute if score $Random Temporary matches 1 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_2
    execute if score $Random Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/trigger/particle/particle_3
# リセット
    scoreboard players reset $Random Temporary


# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 610f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # ダメージ
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/

# 自身に防御貫通ダメージを与える
    # ダメージ量
        data modify storage api: Argument.Damage set value 6.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage api: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた","with":[{"selector":"@s"}]}]']
    # ダメージ
        function api:damage/modifier_continuation
        execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset
