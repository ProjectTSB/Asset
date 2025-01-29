#> asset:artifact/0364.red_knights_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/364/attack_melee/

#> Private
# @private
    #declare score_holder $UseCount

# 残り回数が1回の時発動した場合
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 365
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/replace/from_id
    execute if data storage asset:context {BrokeItem: true} run tellraw @s {"text":"赤い騎士の剣は血を欲している","color":"dark_red","bold":true}

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# ほしい範囲に剰余算
    execute store result score $Random Temporary run function lib:random/
# 疑似乱数取得
    scoreboard players operation $Random Temporary %= $3 Const
# メッセージ出力
    execute if score $Random Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/attack_melee/particle/particle_1
    execute if score $Random Temporary matches 1 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/attack_melee/particle/particle_2
    execute if score $Random Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0364.red_knights_sword/attack_melee/particle/particle_3
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
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function api:damage/modifier_continuation
        execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset
