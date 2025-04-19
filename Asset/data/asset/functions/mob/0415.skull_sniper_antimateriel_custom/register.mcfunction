#> asset:mob/0415.skull_sniper_antimateriel_custom/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/415/register

# 継承
    data modify storage asset:mob Extends append value 27
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 415
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"","color":"white","extra":[{"text":"スカルスナイパー"},{"text":" "},{"text":"対物カスタム","color":"gray","bold":true}]}'
# Mobの説明文 (TextComponentString[]) (オプション)
data modify storage asset:mob Lore set value ['{"text":"スカルスナイパーが対物ライフルを持ってしまった。","color":"white"}','{"text":"もう壁なんて信用できない。","color":"white"}','{"text":"信用できるのは己の身のみ。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1200
# フィールド
    data modify storage asset:mob Field.Damage set value 42
    # data modify storage asset:mob Field.Pierce set value
