#> asset:artifact/1038.flame_devil_head/trigger/hurt/2.cooldown
#
# クールダウン処理
#
# @within function asset:artifact/1038.flame_devil_head/trigger/hurt/1.trigger

#> Val
# @private
    #declare score_holder $SU.CoolDown

# 現在時間を取得
# 前回効果発動時の時間との差からクールダウン中かどうかを判定する
    execute store result score $SU.CoolDown Temporary run time query gametime
    scoreboard players operation $SU.CoolDown Temporary -= @s SU.CoolDown
    execute if score $SU.CoolDown Temporary matches 100.. run function asset:artifact/1038.flame_devil_head/trigger/hurt/3.mp_heal

# リセット
    scoreboard players reset $SU.CoolDown Temporary