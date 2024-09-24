#> asset:artifact/0991.soul_mate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0991.soul_mate/trigger/dis_equip/

# 演出
    playsound minecraft:entity.ghast.scream player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.8
    execute anchored eyes positioned ^ ^ ^ run particle soul ~ ~0.5 ~ 0 0 0 0.01 5

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage lib: Argument.Damage float 0.30 run attribute @s generic.max_health get 1
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
    # 補正を無視
        data modify storage lib: Argument.FixedDamage set value true
# 補正functionを実行
    function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset
