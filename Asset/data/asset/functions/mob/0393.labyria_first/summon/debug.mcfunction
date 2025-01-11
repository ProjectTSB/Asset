#> asset:mob/0393.labyria_first/summon/debug
#
# モブの動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# モブを召喚
    data modify storage api: Argument.ID set value 393
    function api:mob/summon