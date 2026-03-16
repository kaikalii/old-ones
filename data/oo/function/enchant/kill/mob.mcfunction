advancement revoke @s only oo:killed_mob
execute unless function oo:enchant/kill/allowed run return 0

function oo:enchant/kill/default