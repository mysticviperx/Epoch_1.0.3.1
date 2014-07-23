if (SnappingEnabled) then {
	SnappingEnabled = false;
	SnappingAttachedToPlayer = false;
	cutText ["Snapping disabled.", "PLAIN DOWN"];
} else {
	SnappingEnabled = true;
	cutText ["Snapping enabled.", "PLAIN DOWN"];
};