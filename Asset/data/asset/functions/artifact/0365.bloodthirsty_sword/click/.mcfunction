#> asset:artifact/0365.bloodthirsty_sword/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/365/click/

# 神器もらうよ
    data modify storage api: Argument.ID set value 364
    function api:artifact/replace/from_id

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 100
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.ravager.celebrate player @a ~ ~ ~ 1 2
    tellraw @s {"text":"赤い騎士の剣は満足そうだ","color":"dark_red","bold":true}

# 自身の現在体力の25%分のダメージを与える
    # ダメージ量
        function api:data_get/health
        execute store result storage api: Argument.Damage float 0.25 run data get storage api: Health
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage api: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function api:damage/modifier
        function api:damage/
# リセット
    function api:damage/reset
