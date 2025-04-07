#> asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/dealt_damage
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/

# データ指定
    data modify storage lib: args set value {dx:1.8,dy:4,dz:1.8,selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
# 判定を発生
    function lib:rotatable_dxyz/m with storage lib: args
# ダメージ値設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Contact
# ダメージの属性をセット
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

#オブジェクトに持たせた持ち主のUUIDを使って、補正functionを実行
    function api:damage/modifier

# 多重ヒット防止判定部分でタグを付与した対象にダメージを与える
    execute as @a[tag=DXYZ,distance=..16] run function api:damage/

# サウンド
    execute as @a[tag=DXYZ,distance=..16] run playsound minecraft:entity.zombie.attack_wooden_door hostile @s ~ ~ ~ 1 1.5

# リセット
    function api:damage/reset
    tag @a[tag=DXYZ,distance=..16] remove DXYZ
