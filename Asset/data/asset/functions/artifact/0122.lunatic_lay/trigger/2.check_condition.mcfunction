#> asset:artifact/0122.lunatic_lay/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0122.lunatic_lay/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed] anchored eyes positioned ^ ^ ^ as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5,sort=random] run function asset:artifact/0122.lunatic_lay/trigger/find_through_target/
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run tag @s remove CanUsed
    data remove storage asset:temp IsTargetEntityFound
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0122.lunatic_lay/trigger/3.main
# リセット
    tag @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] remove 3E.Hit
