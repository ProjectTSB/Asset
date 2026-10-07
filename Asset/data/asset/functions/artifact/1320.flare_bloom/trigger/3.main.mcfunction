#> asset:artifact/1320.flare_bloom/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1320.flare_bloom/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ rotated ~90 25 run function asset:artifact/1320.flare_bloom/trigger/vfx
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ rotated ~90 -25 run function asset:artifact/1320.flare_bloom/trigger/vfx
    playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 1.3
    playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.5

# ダメージ設定
    data modify storage api: Argument.FieldOverride.Damage.Default set value {Min:400,Max:500}
    execute store result storage api: Argument.FieldOverride.Damage.LowHealthPer.Min float 1.5 run data get storage api: Argument.FieldOverride.Damage.Default.Min
    execute store result storage api: Argument.FieldOverride.Damage.LowHealthPer.Max float 1.5 run data get storage api: Argument.FieldOverride.Damage.Default.Max

# ダメージ以外の諸々の設定
    # 1tick毎の敵を追跡する速度
        data modify storage api: Argument.FieldOverride.ChaseSpeed set value 0.6

    # 召喚演出が何tickか？
        data modify storage api: Argument.FieldOverride.SummonMoveTick set value 45

    # 存在時間(召喚が永続化したら要らなくなりそうだが)
        data modify storage api: Argument.FieldOverride.Tick set value 445

    # 最大追跡時間
        data modify storage api: Argument.FieldOverride.ChaseTick.Max set value 60

    # 攻撃発生までのディレイ
        data modify storage api: Argument.FieldOverride.AttackDelay.Max set value 8

    # 攻撃のクールダウン
        data modify storage api: Argument.FieldOverride.AttackCD.Max set value 30

# Object召喚
    data modify storage api: Argument.ID set value 1153
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ 0 anchored eyes positioned ^-1.8 ^8 ^-5 run function api:object/summon
