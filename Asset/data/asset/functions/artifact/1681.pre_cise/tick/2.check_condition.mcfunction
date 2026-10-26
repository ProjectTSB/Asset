#> asset:artifact/1681.pre_cise/tick/2.check_condition
#
# 頭上のbig_preciseと的を維持する条件を調べる
# 神器が信仰できる神のプレイヤーが、生存中で、スペクテイターでないときに維持する (的と探索はスニーク中のみ)
#
# @within function asset:artifact/1681.pre_cise/tick/1.trigger

# 信仰のみを確認する (MP・クールダウンの確認とメッセージは省く) 成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {LocalCooldown:true,SpecialCooldown:true,TypeCooldown:true,SecondaryTypeCooldown:true,MPRequire:true,BelieveMessage:true}
    function asset:artifact/common/check_condition/mainhand

# 死亡中・スペクテイターの場合は外す
    execute if entity @s[tag=Death] run tag @s remove CanUsed
    execute if entity @s[gamemode=spectator] run tag @s remove CanUsed

# 条件を満たせば一式を維持し、満たさなければ狙う敵の保存を消す
    execute if entity @s[tag=CanUsed] run function asset:artifact/1681.pre_cise/keep/objects
    execute if entity @s[tag=!CanUsed] run function asset:artifact/1681.pre_cise/aim/reset

# リセット
    tag @s remove CanUsed
