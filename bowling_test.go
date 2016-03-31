package bowling

import "testing"

func TestSimple1(t *testing.T) {
	if play("X") != 10 {
		t.Errorf("X is wrong -> %d", play("X"))
	}

	if play("2/") != 10 {
		t.Errorf("2/ is wrong -> %d", play("2/"))
	}

	if play("2-") != 2 {
		t.Errorf("2- is wrong -> %d", play("2-"))
	}

	if play("--") != 0 {
		t.Errorf("-- is wrong -> %d", play("--"))
	}
}
