advancement revoke @s only oo:attacked_fire
execute if block ~ ~ ~ lava run return run function oo:enchant/attacked/lava
execute if block ~ ~1 ~ lava run return run function oo:enchant/attacked/lava
function oo:enchant/attacked/try {chance:10,slot:head,ench:fire_protection}
function oo:enchant/attacked/try {chance:10,slot:chest,ench:fire_protection}
function oo:enchant/attacked/try {chance:10,slot:legs,ench:fire_protection}
function oo:enchant/attacked/try {chance:10,slot:feet,ench:fire_protection}