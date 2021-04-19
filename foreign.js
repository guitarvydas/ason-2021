function enc (s) {
    if (s.includes ("%")){
	return ` (enc "${s}") `;
    } else {
	return s;
    }
}
