#> asset:object/2001.custom_effect/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2001/init

# 設定項目（FieldOverride）
    # Item : アイテムデータ。item_displayのitem。
    # Color : エフェクトの色。leather_horse_armorの色であるため、16777215が白。
    # Scale : エフェクトの大きさ。途中で大きさは変更できないので注意。
    # Frames : エフェクトのフレーム配列。カスタムモデルデータのIDをInt配列で入れておくことでその順番にアニメーションする。
    # Transformation : エフェクトの向きと位置。クォータニオンや座標で指定する、あれ。


# 角度が固定されていなければ、実行向きに合わせる
    execute unless data storage asset:context this{LockRotation:true} run tp @s ~ ~ ~ ~ ~

# mergeを行う
    data modify storage asset:temp 2001.item set from storage asset:context this.Item
    data modify storage asset:temp 2001.item.tag.display.color set from storage asset:context this.Color
    execute if data storage asset:context this.Transformation run data modify storage asset:temp 2001.transformation set from storage asset:context this.Transformation
    data modify entity @s {} merge from storage asset:temp 2001

# Framesのint配列を反転させる
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context this.Frames
    function lib:array/reverse
    data modify storage asset:context this.Frames set from storage lib: Array
    function lib:array/session/close

# なおFramesの最初の値は-1にする
    data modify storage asset:context this.Frames append value -1

# タグ付け
    tag @s add 2001.CustomEffect
    tag @s add 2001.Invisible
