#> asset:object/2001.slash_effect/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2001/init

# 設定項目（FieldOverride）
    # item : アイテムデータ。item_displayのitem。
    # Color : エフェクトの色。leather_horse_armorの色であるため、16777215が白。
    # Scale : エフェクトの大きさ。途中で大きさは変更できないので注意。
    # Frames : エフェクトのフレーム配列。カスタムモデルデータのIDをInt配列で入れておくことでその順番にアニメーションする。
    # transformation : エフェクトの向きと位置。クォータニオンや座標で指定する、あれ。


# 実行向きに合わせる
    tp @s ~ ~ ~ ~ ~

# 初期設定を行う（FieldOverride）
    execute unless data storage asset:context this.Color run data modify storage asset:context this.Color set value 0
    execute unless data storage asset:context this.Scale[0] run data modify storage asset:context this.Scale set value [5f,5f,0.1f]
    execute unless data storage asset:context this.Frames[0] run data modify storage asset:context this.Frames set value [20335,20335,20335,20336,20337]

# mergeを行う
    data modify storage asset:temp 2001.item set from storage asset:context this.item
    data modify storage asset:temp 2001.item.tag.display.color set from storage asset:context this.Color
    execute if data storage asset:context this.transformation run data modify storage asset:temp 2001.transformation set from storage asset:context this.transformation
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
    tag @s add 2001.SlashEffect
    tag @s add 2001.Invisible
