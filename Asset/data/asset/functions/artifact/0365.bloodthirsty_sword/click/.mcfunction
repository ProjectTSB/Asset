#> asset:artifact/0365.bloodthirsty_sword/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/365/click/

# 神器もらうよ
    data modify storage api: Argument.ID set value 364
    function api:artifact/give/from_id

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 100
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.ravager.celebrate player @a ~ ~ ~ 1 2
    tellraw @s {"text":"赤い騎士の剣は満足そうだ","color":"dark_red","bold":true}

# 自身の現在体力の25%分のダメージを与える
    # ダメージ量
        function api:data_get/health
        execute store result storage lib: Argument.Damage float 0.25 run data get storage api: Health
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset
