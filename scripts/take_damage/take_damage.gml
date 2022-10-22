// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function take_damage(obj, amt){
	if (obj.hp - amt > 0) {
		obj.hp -= amt
	} else {
		return true
	}
	return false
}