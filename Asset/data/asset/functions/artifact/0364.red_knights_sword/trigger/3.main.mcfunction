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
    function asset:artifact/common/use/mainhand

# 攻撃動作
    # デバフID321、「渇望の反動」の付与を確認する。サブ攻撃のクールタイムを兼ねている。
        data modify storage api: Argument.ID set value 321
        function api:entity/mob/effect/get/from_id

    # 攻撃
        # スニークなし: メイン攻撃
            execute unless predicate lib:is_sneaking run function asset:artifact/0364.red_knights_sword/trigger/main_attack/
        # スニークありかつ、エフェクトが付与されていなければ: サブ攻撃
            execute if predicate lib:is_sneaking unless data storage api: Return.Effect run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/
        # スニークありだが、エフェクトが付与されていれば: メイン攻撃
            execute if predicate lib:is_sneaking if data storage api: Return.Effect run function asset:artifact/0364.red_knights_sword/trigger/main_attack/

# リセット
    scoreboard players reset $A4.Temp Temporary
