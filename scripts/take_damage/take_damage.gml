function take_damage(obj, amt){
	if (obj.hp - amt > 0) {
		obj.hp -= amt
	} else {
		return true
	}
	return false
}