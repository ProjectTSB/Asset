#> asset:artifact/1228.fatalerror/using_item/charge
#
# 使用継続時間からチャージ段階を更新する
#
# @within function asset:artifact/1228.fatalerror/using_item/2.check_condition

# チャージ段階が変わるときだけEffectを更新する
    execute if data storage asset:context UsingItemTime{mainhand:26} run function asset:artifact/1228.fatalerror/using_item/charge/2

#> Private
# @private
    #declare score_holder $Charge1228.Time

# 使用継続時間を取得する
    execute store result score $Charge1228.Time Temporary run data get storage asset:context UsingItemTime.mainhand

# 長押し中の演出
    execute if data storage api: Return.Effect{Stack:1} if score $Charge1228.Time Temporary matches 4..26 anchored eyes positioned ^-0.35 ^-0.15 ^1.5 rotated ~ ~90 run function asset:artifact/1228.fatalerror/using_item/charge/particle
    execute if data storage api: Return.Effect{Stack:2} anchored eyes positioned ^-0.35 ^-0.15 ^1 rotated ~ ~90 run particle electric_spark ~ ~ ~ 0 0 0 0.5 1

# 使用継続時間の作業値を片付ける
    scoreboard players reset $Charge1228.Time Temporary
